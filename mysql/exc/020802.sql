INSERT INTO `nct`.`infrnationality`
(
`ifnaName`,
`ifnaCode2Char`,
`ifnaCode3char`,
`ifnaUseNy`,
`ifnaOrder`,
`ifnaDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`ModDateTime`,
`ModDateTimeSvr`)
VALUES
(
"미국"
,"US"
,"USA"
,1
,2
,0
,now()
,now()
,now()
,now()
);

select * from infrnationality;