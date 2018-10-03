CREATE KEYSPACE testing2 
WITH replication = {'class': 'NetworkTopologyStrategy', 'datacenter1': '2'}  
 AND durable_writes = true;

CREATE TYPE testing2.user (
    id int,
    name text,
    photo text
);

CREATE TYPE testing2.review (
    id int,
    review text,
    created text,
    user frozen<user>
);

CREATE TABLE testing2.home_reviews (
    home_id int PRIMARY KEY,
    reviews list<frozen<review>>
)