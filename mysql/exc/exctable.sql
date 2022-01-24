insert into cafe(
seq
,name
,cafeTable
,cafeChair
,address
,location
,ceo
) values (
1
,'starbucks'
,1
,2
,'강서구 마곡동'
,1
,'고소영'
);

select * from cafe;


create table cafe1 (
seq int,
    cafeName varchar(45),
    cafeTable int,
    cafeChair int,
    address varchar(45),
    location int,
    ceo varchar(45)

);


insert into cafe1(
seq
,cafeName
,cafeTable
,cafeChair
,address
,location
,ceo
) values (
10
,'블루보틀'
,1000
,2000
,'성수'
,1
,'박성수'
);

select * from cafe1;

select * from cafe1 where seq = 3;
select * from cafe1 where cafeName = '블루보틀';

select * from cafe1 where cafeTable >= 100;
select * from cafe1 where cafeChair <> 100;

select * from cafe1 where cafeName like '%루보%';
select * from cafe1 where cafeName like '%바셋';




select * from cafe1 where cafeTable = 100 and cafeChair = 200;