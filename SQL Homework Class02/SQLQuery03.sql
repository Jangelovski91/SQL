/*
List all Teacher First Names and Student First Names in single result set with duplicates
List all Teacher Last Names and Student Last Names in single result set. Remove duplicates
List all common First Names for Teachers and Students
*/

select FirstName
from Student
union all
select FirstName
from Teacher

select LastName
from Student
union 
select LastName
from Teacher

select FirstName
from Student
intersect
select FirstName
from Teacher