import React from 'react';
import Search from './search.jsx'
import ReviewList from './reviewList.jsx';
import Pagination from './pagination.jsx';
const fetch = require('node-fetch');

import styled from 'styled-components';

const Container = styled.div`
  position: relative;
`
class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      homeId: '100', // DEFAULT 100 (Same reviews for any house)
      data: [],
      allReviews: [],
      filteredReviews: [],
      firstPage: [],
      displayedReviews:[],
      searchMode: false,
      query: '',
      currentPage: 1, // default
      pages: [1, 2, 3, 4, 5],
    };
  }


  componentDidMount() {
    const pullListing = () => {
      let path = window.location.pathname;
      path = path.substr(1);
      const end = path.substr(path.indexOf('/'));
      return end.slice(1, end.length - 1);
    };

    const listing = pullListing();

    const fetcher = () => {
      fetch(`/homes/${listing}/reviews/1`) //will make a request to localhost:3001/homes/100/reviews/1
        .then(response => response.json())
        .then((data) => {
          console.log('FETCHER', data);
          this.setState({ data });
          this.setState({ firstPage: data });
          this.setState({ homeId: listing });
        });
    };

    fetcher();
  }

  handlePageChange(e, searchM) {  
  //everytime you change the page, you send a request to the DB 
  //use that to know how many pages to render... 
  //change the state of the displayed pages 
  //
  //this.setState({pages:newPages})

    if(!searchM) {
      fetch('/homes/'+ this.state.homeId +'/reviews/' + e) //simple search based off all reviews
        .then(response => response.json())
        .then((data) => {
          console.log('!searchM', data);

          this.setState({ data });
          this.setState({ currentPage: e });
          const newPages = this.state.pages.map(page => page + 1);
          this.setState({ pages: newPages });
        });
    } else { //else you are in searchMode and return a new array with the new pages then change state of pages
      console.log('searchM', this.state.query)
      //page change fetch should include the query and the id
      fetch('/homes/' + this.state.homeId + '/reviews/queried/' + this.state.query + "/" + e + "/1") //simple search based off all reviews
        .then(response => response.json())
        .then((data) => {
          console.log('searchM', data);
          const newPage = this.state.currentPage + 1; 
          this.setState({
            displayedReviews: data,
            currentPage: newPage,
          });
        });
    }
    //the searchMode route will return based off not only 
    //the page # but also the query 
    //a combo between :id and :query 
  }

  handleQueryChange(query) {
    //gets called the moment you press the "enter" key to search 
    //needs to pass down new page numbers to pagination through props (state change trickle down)
    console.log(query);
    this.setState({ query });

    fetch('/homes/' + this.state.homeId + '/reviews/queried/' + query + '/1' ) //gets the pageArray (all under query)
      .then(response => response.json())
      .then((data) => {
        console.log('QUERIED', data);
        let newPageArray;
        if (data.length <= 5) {
          console.log('<=5 here');
          newPageArray = [1];
        } else if (data.length % 5 === 0) {
          newPageArray = [];
          console.log('%5=0 here');
          for (let i = 1; i < 5; i += 1) {
            newPageArray.push(i);
          }
        } else {
          newPageArray = [];
          console.log('else - here');
          let limit = Math.ceil(data.length / 5) + 1;
          if (limit > 5) {
            limit = 5;
          }
          for (let i = 1; i < limit; i += 1) {
            newPageArray.push(i);
          }
        }
        console.log('newPages', newPageArray);
        this.setState({
          pages: newPageArray,
          filteredReviews: data,
        });
      });

    //want the default display to be page 1 of the queried reviews (done below)

    fetch('/homes/' + this.state.homeId + '/reviews/queried/' + query + "/" + 1) 
      .then(response => response.json())
      .then(data => {
        this.setState({
          displayedReviews: data,
          searchMode:true,
        })
      })
      //will change state so that we are now in search mode 
      //and the pages will be rendered based on the filtered data

  }

//each mode will have the ability to change state 
//the component will be conditionally rendered based off that 

  handleReset(){ //should set search back to normal mode(false)
    this.setState({
      data: this.state.firstPage,
      searchMode: false})
  }

  render() {
   var searchMode = this.state.searchMode;
    if(!searchMode) {
      var dataToPass = this.state.data;
    } else {    //else if the search mode is true, then pass down filtered reviews instead of data  
      var dataToPass = this.state.displayedReviews; 
      
    }
    return (
      <Container className="reviewBox">
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <Search compDidMount={this.componentDidMount.bind(this)} handleReset={this.handleReset.bind(this)} handleQueryChange={this.handleQueryChange.bind(this)} />
        <div onClick={this.handlePageChange.bind(this)}></div>
        <ReviewList data={dataToPass} />
        <Pagination currentPage={this.state.currentPage} pageArray={this.state.pages}
        searchMode={this.state.searchMode} handlePageChange={this.handlePageChange.bind(this)}/>
        
      </Container>
    )
   }

};

export default App;