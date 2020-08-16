/*
Calculate the count of all grades per Teacher in the system and filter only grade count greater then 200
Calculate the count of all grades per Teacher in the system for first 100 Students (ID < 100) and filter teachers with more than 50 Grade count
Find the Grade Count, Maximal Grade, and the Average Grade per Student on all grades in the system. Filter only records where Maximal Grade is equal to Average Grade
List Student First Name and Last Name next to the other details from previous query
*/
	

select teacherId, count(grade) as greatCount
from grade
group by TeacherID
having count(grade) > 200
go

select teacherId, count(grade) as greatCount
from grade
where StudentID < 100
group by TeacherID
having count(grade) > 50
go

select StudentId, Count(Grade) as GradeCount, Max(Grade) as MaxGrade, avg(Cast(Grade as decimal(4,2))) as AverageGrade
from Grade
group by StudentId
having  Max(Grade) = avg(Cast(Grade as decimal(4,2)))
go

select g.StudentId, s.FirstName, s.LastName, Count(g.Grade) as GradeCount, Max(g.Grade) as MaxGrade, avg(Cast(g.Grade as decimal(4,2))) as AverageGrade
from Grade as g
inner join Student as s on g.StudentID = s.ID
group by StudentId, s.FirstName, s.LastName
having  Max(g.Grade) = AVG(Cast(g.Grade as decimal(4,2)))
go