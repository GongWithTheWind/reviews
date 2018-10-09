import React from 'react';
import { Component } from 'react';

import styled from 'styled-components';
const Text = styled.div`
    margin: 0px;
    word-wrap: break-word;
    font-size: 14px;
    line-height: 22px ;
    letter-spacing: normal;
    font-family: Circular,-apple-system,BlinkMacSystemFont,Roboto,Helvetica Neue,sans-serif;
    color: #484848 ;
    font-weight: 300;
    width:500px;
    word-wrap: break-word;
    display: block;
    padding-bottom: 25px;
    padding-top: 15px;
    direction: ltr;
    unicode-bidi: isolate;
    background-color: #fff;
    -webkit-tap-highlight-color: transparent;
`

const User = styled.div`
    font-weight: 500;
    word-wrap: break-word;
    font-size: 16px;
    
    letter-spacing: normal;
    font-family: Circular, -apple-system, BlinkMacSystemFont, Roboto, "Helvetica Neue", sans-serif;
    color: rgb(72, 72, 72);
    display: inline;
    position: absolute;
    margin-left:10px;
    margin-top:5px;
    
`
const Date = styled.div`

font-size: 13px;
font-weight:100;
letter-spacing: normal;
font-family: Circular, -apple-system, BlinkMacSystemFont, Roboto, "Helvetica Neue", sans-serif;
color: rgb(72, 72, 72);
margin-left: 60px;
margin-top: -25px;

`
const Pic = styled.img`
background: rgb(216, 216, 216);
border-radius: 50%;
border-width: 2px;
vertical-align: middle;
width: 100px;
border-style: solid;
border-color: rgb(255, 255, 255);
border-image: initial;
overflow: hidden;
height: 48px;
width: 48px;
`
const Line = styled.div`
font-size: 16px;
font-weight: lighter;
color:#f4f4f4;

`


const ReviewList = ({ data }) => {
  const ReviewNodes =
    data.map((review) => {
      console.log(review.created);
      return (
        <div key={review.id}>
          <br />
          <br />
          <Pic src={review.photo} />
          <User>{review.user}</User>
          <Date>{review.created}</Date>
          <Text>{review.review}</Text>
          <Line>_______________________________________________________________</Line>
        </div>

      );
    });

  return (
    <div id="project-reviews" className="reviewList">
      <ul>
        {ReviewNodes}
      </ul>

    </div>
  );
};

export default ReviewList;