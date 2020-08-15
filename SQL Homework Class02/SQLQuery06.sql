/*
List all possible combinations of Courses names and AchievementType names that can be passed by student
List all Teachers that has any exam Grade
List all Teachers without exam Grade
List all Students without exam Grade (using Right Join)
*/

select c.Name as CoursesName, a.Name as AchievementName
from dbo.Course c
cross join dbo.AchievementType a

select distinct t.FirstName as Tracher
from dbo.Grade g
inner join dbo.Teacher t on g.Grade = t.ID

select distinct t.FirstName as Teacher
from dbo.Teacher t
left join dbo.Grade g on t.ID = g.TeacherID
where g.TeacherID is null

--select distinct t.FirstName as Teacher
--from dbo.Grade g
--right join dbo.Teacher t on t.ID = g.TeacherID
--where g.TeacherID is null


select distinct s.FirstName
from dbo.Grade g
right join dbo.Student s on g.StudentID = s.ID
where g.StudentID is null

--select distinct s.FirstName
--from dbo.Student s
--left join dbo.Grade g on g.StudentID = s.ID
--where g.StudentID is null