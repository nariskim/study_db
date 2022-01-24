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

-- varchar 은 '또는 " 로 감싼다.
-- int 는 사용하지 않아도 된다.
-- 콤마는 앞쪽을 선호 : 이건 호불호가 갈린다.alter

-- 데이터 조회 
select * from cafe;