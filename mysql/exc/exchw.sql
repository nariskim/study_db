use world;

create table book (
	seq int,
    name varchar(45),
    author varchar(45),
    publisher varchar(45),
    publicationDate varchar(45),
    price int,
    rewardingPoint int,
    salesRank int
    
);

drop table rental;

create table rental (
	seq int,
    placeType varchar(45),
    reservation varchar(45),
    capacity int,
    wifi int,
    kitchen int,
    airConditioning int,
    heating int,
    gym int,
    freeParking int,
    evCharger int,
    smokeAlarm int,
    carbonMonoxideAlarm int
    
);

insert into book(
seq
,name
,author
,publisher
,publicationDate
,price
,rewardingPoint
,salesRank
) values (
1
,'고경희'
,'Do it! HTML+CSS+자바스크립트 웹 표준의 정석'
,'이지스퍼블리싱'
,'2021년1월'
,27000
,1500
,49899

);

select * from book;

create table book (
	seq int,
    name varchar(45),
    author varchar(45),
    publisher varchar(45),
    publicationDate varchar(45),
    price int,
    rewardingPoint int,
    salesRank int
    
);

drop table rental;

create table rental (
	seq int,
    placetype varchar(45),
    reservation varchar(45),
    capacity int,
    wifi int,
    kitchen int,
    airConditioning int,
    heating int,
    gym int,
    freeParking int,
    evCharger int,
    smokeAlarm int,
    carbonMonoxideAlarm int
    
);

insert into rental (
seq
,placetype
,reservation
,capacity
,wifi
,kitchen
,airConditioning
,heating
,gym
,freeParking
,evCharger
,smokeAlarm
,carbonMonoxideAlarm
) values (
1
,'연습실'
,'최소 1시간 전부터'
,4
,1
,0
,1
,1
,0
,0
,1
,1
,1
);

select * from book;


