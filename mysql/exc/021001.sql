use nct;

select
a.ifmmSeq
, a.ifmmAdminNy
, a.ifmmDormancyNy
, a.ifmmName
, a.ifmmId
, a.ifmmGenderCd
,(select ifcdName from infrCode where ifcdSeq = a.ifmmGenderCd) as ifmmGenderName
, a.ifmmDob
, b.ifmaTypeCd
, (select ifcdName from infrCode where ifcdSeq = b.ifmaTypeCd) as ifmaTypeName
, b ifmaTitle
, b.ifmaAddress1
, b.ifmaAddress2
, b.ifmaZipcode
, c.ifaoTypeCd
,(select ifcdName from infrCode where ifcdSeq = c.ifaoTypeCd) as ifaoTypeName
, c.ifaoSnsTypeCd
,(select ifcdName from infrCode where ifcdSeq = c.ifaoSnsTypeCd) as ifaoSnsTypeName
, c.ifaoTitle
, c.ifaoUrl

from
infrMember a
left join infrMemberAddress b on b.ifmaDelNy = 0 and b.ifmaDefaultNy = 1 and b.ifmmSeq = a.ifmmSeq
left join infrMemberAddressOnline c on c.ifaoDelNy = 0 and c.ifaoDefaultNy = 1 and c.ifmmSeq = a.ifmmSeq

where 1=1
and a.ifmmDelNy = 0
;