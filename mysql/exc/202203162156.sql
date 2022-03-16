SELECT
a.oymbName
, a.oymbId
, a.oymbDob
, a.oymbDelNy
, a.oymbGenderCd
,(select oycdName from oyCode where oycdSeq = a.oymbGenderCd) as oymbGender
, b.oyoaSnsTypeCd
,(select oycdName from oyCode where oycdSeq = b.oyoaSnsTypeCd) as oymbSns
, b.oyoaUrl
, b.oyoaDelNy
, c.oyjqQuestionCd
,(select oycdName from oyCode where oycdSeq = c.oyjqQuestionCd) as oymbQuestion
, c.oyjqAnswer
, c.oyjqDelNy
, d.oymaAddress1
, d.oymaAddress2
, d.oymaDelNy
, e.oymnSeq
,(select oynaName from oyNationality where oynaSeq = e.oymbSeq) as oymbNationality
, f.oympTelecomCd
,(select oycdName from oyCode where oycdSeq = f.oympTelecomCd) as oymbTelecom
, f.oympNumber
, f.oympDelNy
, g.oymeEmailAccount
, g.oymeEmailDomainCd
,(select oycdName from oyCode where oycdSeq = g.oymeEmailDomainCd) as oymbEmailDomain
, g.oymeDelNy
FROM oyMember a
inner join oymbonlineaddress b on b.oymbSeq = a.oymbSeq
inner join oymbjoinqna c on c.oymbSeq = a.oymbSeq
inner join oymbaddress d on d.oymbSeq = a.oymbSeq
inner join oymbnationality e on e.oymbSeq = oynaSeq
inner join oymbphone f on f.oymbSeq = a.oymbSeq
inner join oymbemail g on g.oymbSeq = a.oymbSeq
;
SELECT
a.oymbName
, a.oymbId
, a.oymbDob
, a.oymbDelNy
, a.oymbGenderCd
,(select oycdName from oyCode where oycdSeq = a.oymbGenderCd) as oymbGender
, b.oyoaSnsTypeCd
,(select oycdName from oyCode where oycdSeq = b.oyoaSnsTypeCd) as oymbSns
, b.oyoaUrl
, b.oyoaDelNy
, c.oyjqQuestionCd
,(select oycdName from oyCode where oycdSeq = c.oyjqQuestionCd) as oymbQuestion
, c.oyjqAnswer
, c.oyjqDelNy
, d.oymaAddress1
, d.oymaAddress2
, d.oymaDelNy
, e.oymnSeq
,(select oynaName from oyNationality where oynaSeq = e.oymbSeq) as oymbNationality
, f.oympTelecomCd
,(select oycdName from oyCode where oycdSeq = f.oympTelecomCd) as oymbTelecom
, f.oympNumber
, f.oympDelNy
, g.oymeEmailAccount
, g.oymeEmailDomainCd
,(select oycdName from oyCode where oycdSeq = g.oymeEmailDomainCd) as oymbEmailDomain
, g.oymeDelNy
FROM oyMember a
left join oymbonlineaddress b on b.oymbSeq = a.oymbSeq
left join oymbjoinqna c on c.oymbSeq = a.oymbSeq
left join oymbaddress d on d.oymbSeq = a.oymbSeq
left join oymbnationality e on e.oymbSeq = oynaSeq
left join oymbphone f on f.oymbSeq = a.oymbSeq
left join oymbemail g on g.oymbSeq = a.oymbSeq
;

		SElECT
        a.oymbSeq
		, a.oymbName
		, a.oymbId
		, a.oymbDob
		, a.oymbDelNy
		, a.oymbGenderCd
		,(select oycdName from oyCode where oycdSeq = a.oymbGenderCd) as oymbGender
		, b.oyoaSnsTypeCd
		,(select oycdName from oyCode where oycdSeq = b.oyoaSnsTypeCd) as oymbSns
		, b.oyoaUrl
		, b.oyoaDelNy
		, c.oyjqQuestionCd
		,(select oycdName from oyCode where oycdSeq = c.oyjqQuestionCd) as oymbQuestion
		, c.oyjqAnswer
		, c.oyjqDelNy
		, d.oymaAddress1
		, d.oymaAddress2
		, d.oymaDelNy
		, e.oymnSeq
		,(select oynaName from oyNationality where oynaSeq = e.oymbSeq) as oymbNationality
		, f.oympTelecomCd
		,(select oycdName from oyCode where oycdSeq = f.oympTelecomCd) as oymbTelecom
		, f.oympNumber
		, f.oympDelNy
		, g.oymeEmailAccount
		, g.oymeEmailDomainCd
		,(select oycdName from oyCode where oycdSeq = g.oymeEmailDomainCd) as oymbEmailDomain
		, g.oymeDelNy
        
        FROM oyMember a
		LEFT JOIN oymbOnlineaddress b on b.oyoaDefaultNy=1 AND b.oymbSeq = a.oymbSeq
		LEFT JOIN oymbJoinqna c on c.oymbSeq = a.oymbSeq
		LEFT JOIN oymbAddress d on d.oymaDefaultNy=1 AND d.oymbSeq = a.oymbSeq
		LEFT JOIN oymbNationality e on e.oymbSeq = oynaSeq
		LEFT JOIN oymbPhone f on f.oympDefaultNy=1 AND f.oymbSeq = a.oymbSeq
		LEFT JOIN oymbEmail g on g.oymeDefaultNy=1 AND  g.oymbSeq = a.oymbSeq
        
    
        ; 
        
        SELECT
        a.oymbSeq
		, a.oymbName
		, a.oymbId
		, a.oymbGenderCd
		,(select oycdName from oyCode where oycdSeq = a.oymbGenderCd) as oymbGender
		, f.oympNumber
		, g.oymeEmailFull
        
       	FROM oyMember a
		LEFT JOIN oymbPhone f on f.oympDefaultNy=1 AND f.oymbSeq = a.oymbSeq
		LEFT JOIN oymbEmail g on g.oymeDefaultNy=1 AND g.oymbSeq = a.oymbSeq
        
        WHERE 1=1
     
       
        ;
