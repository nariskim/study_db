use world;

create table test (
 seq int unsigned not null auto_increment,
 name varchar(45) null,
 primary key (seq)

);

insert into test (
name
) value (
'tiffany'
);

select * from test;


create table test2 (
 seq int unsigned not null auto_increment,
 seq2 int not null,
 seq3 int not null,
 name varchar(45) not null,
 primary key ( seq, seq2, seq3)
);

insert into test2 (
seq2
,seq3
,name
) values (
1
,1
,'nari'
);


select * from test2;

-- 테이블 수정 

-- 컬럼 추가

alter table test add tel varchar(45);

-- 컬럼 삭제

alter table test drop tel;
alter table test drop tele;

-- 컬럼 타입 변경

alter table test modify tel int;

alter table test modify tel varchar(20);
-- 확인 
desc test;

-- 컬럼 이름 변경
alter table test change tel tele int;
-- alter table tesgt2 change tele tel int;

insert into test (
	name
	,tele
) values (
	'naritele'
    ,7777

);


-- 데이터 수정
update test set
	name = 'grace'
    ,tele = '222'
where 1=1
	and seq = 3;


desc test;
select * from test;
-- 데이터 삭제
delete from test
	where 1=1
	and seq = 4;

-- 전체 삭제

truncate test;


-- DDL : data definition langauge : db, table 컨트롤 : 주로 관리자, 선임들의 업무
-- 으ㅣ : data manipulation language : data ; 후임들
-- DCL : data control language : 접근 권한, 커밋/롤백

insert, update, delete -> data 바로 영향을 미치는가 ?


