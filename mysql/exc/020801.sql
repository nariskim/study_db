use nct;
INSERT INTO `nct`.`infrcodegroup`
(
`ifcgName`,
`ifcgUseNy`,
`ifcgOrder`,
`ifcgDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`ModDateTime`,
`ModDateTimeSvr`)
VALUES
(
'회원보안질문.구분'
,1
,14
,0
,now()
,now()
,now()
,now()
);

select * from infrCodeGroup
where 1=1
and ifcgDelNy = 0
;






INSERT INTO `nct`.`infrcode`
(

`ifcdName`,
`ifcdUseNy`,
`ifcdOrder`,
`DelNy`,
`regDateTime`,
`regDateTimeSvr`,
`ModDateTime`,
`ModDateTimeSvr`,
`ifcgSeq`)
VALUES
(
'Question5',
1,
5,
0,
now(),
now(),
now(),
now(),
13
);

update infrCodeGroup
set  ifcgDelNy=0
where ifcgSeq>10;

select * from infrCode;
select * from infrCodeGroup;



select
a.ifcgSeq
, a.ifcgName
, b.ifcdSeq
, b.ifcdName
, b.ifcdOrder
from infrCodeGroup a
left join infrCode b on b .ifcgSeq = a .ifcgSeq
order by a.ifcgSeq, b.ifcdOrder;