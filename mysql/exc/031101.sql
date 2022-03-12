use allyoung;

SELECT 
a.oymbName
, a.oymbId
, a.oymbPassword
, a.oymbDob
, a.oymbMarriageDate
, a.oymbChildenNy
, a.oymbFavoriteColor
, a.oymbEmailConsentNy
, a.oymbSmsConsentNy
, a.oymbPushConsentNy
, a.oymbDelNy
, b.oympNumber
, b.oympDelNy
, c.oyoaUrl
, c.oyoaDelNy
, d.oyjqAnswer
, d.oyjqDelNy
, e.oymeEmailFull
, e.oymeEmailAccount
, e.oymeEmailDomain
, f.oymaAddress1
, f.oymaAddress2
, f.oymaZipCode

From oymember a
left join oymbPhone b on b.oympDefaultNy=1 and b.oymbSeq = a.oymbSeq
left join oymbOnlineAddress c on c.oymbSeq = a.oymbSeq
left join oymbJoinQna d on d.oymbSeq = a.oymbSeq
left join oymbEmail e on e.oymeDefaultNy=1 and e.oymbSeq = a.oymbSeq
left join oymbAddress f on f.oymaDefaultNy=1 and f.oymbSeq = a.oymbSeq
