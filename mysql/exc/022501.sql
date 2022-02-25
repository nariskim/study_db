use allyoung;

select
a.oycgSeq
, a.oycgName
, b.oycdName
from
oyCodeGroup a
left join oyCode b on b.oycdDelNy = 0 and b.oycgSeq = a.oycgSeq;