/*
Calculate the count of all grades in the system
Calculate the count of all grades per Teacher in the system
Calculate the count of all grades per Teacher in the system for first 100 Students (ID < 100)
Find the Maximal Grade, and the Average Grade per Student on all grades in the system
*/


select Count(grade) as total
from dbo.Grade
go


Select TeacherId, Count(grade) as teacherGrade
from dbo.grade
group by TeacherID
order by TeacherID
go


Select TeacherId, Count(grade) as teacherGrade
from dbo.grade
where StudentID < 100
group by TeacherID
order by TeacherID
go

select studentId, Max(grade)as maxGrade, avg(cast( grade as decimal(4,2))) as avargeGrade
from dbo.Grade
group by StudentID
order by StudentID
go