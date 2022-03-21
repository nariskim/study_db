use allyoung;

SELECT
a.oymbSeq
, a.oymbName
, a.oymbNameEng
, a.oymbId
, a.oymbNickName
, a.oymbPassword
, a.oymbDob
, a.oymbGenderCd
,(select oycdName from oyCode where oycdSeq = a.oymbGenderCd) as oymbGender
, a.oymbSkinTypeCd
,(select oycdName from oyCode where oycdSeq = a.oymbSkinTypeCd) as oymbSkinType
, a.oymbPersonalColorCd
,(select oycdName from oyCode where oycdSeq = a.oymbPersonalColorCd) as oymbPersonalColor
, a.oymbInterestsCd
,(select oycdName from oyCode where oycdSeq = a.oymbInterestsCd) as oymbInterests
, a.oymbSmsConsentNy
, a.oymbEmailConsentNy
, a.oymbPushConsentNy
, a.oymbSavedCd
,(select oycdName from oyCode where oycdSeq = a.oymbSavedCd) as oymbSaved
, a.oymbDelNy
, b.oyjqQuestionCd
,(select oycdName from oyCode where oycdSeq = b.oyjqQuestionCd) as oyjqQuestion
, b.oyjqAnswer
, b.oyjqDelNy
, c.oymnSeq
,(select oynaName from oyNationality where oynaSeq = c.oymnSeq) as oymbNationality
, d.oymaSeq
, d.oymaDefaultNy
, d.oymaTypeCd
,(select oycdName from oyCode where oycdSeq = d.oymaTypeCd) as oymaType
, d.oymaZipCode
, d.oymaAddress1
, d.oymaAddress2
, d.oymaDelNy
, e.oympSeq
, e.oympDefaultNy
, e.oympTypeCd
,(select oycdName from oyCode where oycdSeq = e.oympTypeCd) as oympType
, e.oympTelecomCd
,(select oycdName from oyCode where oycdSeq = e.oympTelecomCd) as oympTelecom
, e.oympNumber
, e.oympDelNy
, f.oymeSeq
, f.oymeDefaultNy
, f.oymeTypeCd
,(select oycdName from oyCode where oycdSeq = f.oymeTypeCd) as oymeType
, f.oymeEmailFull
, f.oymeEmailAccount
, f.oymeEmailDomain
, f.oymeEmailDomainCd
,(select oycdName from oyCode where oycdSeq = f.oymeEmailDomainCd) as oymeEmailDomain
, f.oymeDelNy

FROM oyMember a
LEFT JOIN oymbJoinQna b ON b.oymbSeq = a.oymbSeq
LEFT JOIN oymbNationality c ON c.oymbSeq = a.oymbSeq
LEFT JOIN oymbAddress d ON d.oymaDefaultNy=1 AND  d.oymbSeq = a.oymbSeq
LEFT JOIN oymbPhone e ON e.oympDefaultNy=1 AND e.oymbSeq = a.oymbSeq
LEFT JOIN oymbEmail f ON f.oymeDefaultNy=1 AND f.oymbSeq = a.oymbSeq

WHERE 1=1
;