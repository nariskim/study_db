use nct;
--- 쿠폰 조회 ---
select
	a.oymbSeq
	, a.oymbAdminNy
	, a.oymbDormancyNy
	, a.oymbName
	, b.oymcCouponCd
    , (select oycdName from oyCode where oycdSeq = b.oymcCouponCd) as oymcCouponName
	, b.oymcOrder
	, b.oymcUseNy
	, b.oymcUseDate
	, b.oymcDelNy
    , b.oymcValidDate
    
from

oymember a
left join oymembercoupon b on b.oymbSeq = a.oymbSeq
where  1=1
and a.oymbSeq=1
;


--- 상품 조회 (브랜드) ---

select
oypdBrand
, oypdBrandCd
  , (select oycdName from oyCode where oycdSeq = oypdBrandCd) as oypdBrandName
, oypdName
from oyproduct
where 1=1
and oypdBrand="에스트라"
;


select
a.oycgSeq
, a.oycgName
from allyoung.oycgcode a
where 1=1
AND oycgDelNy = 0
;
