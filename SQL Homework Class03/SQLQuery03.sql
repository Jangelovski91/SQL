/*
 Create new view (vv_StudentGrades) that will List all StudentIds and count of Grades per student
 Change the view to show Student First and Last Names instead of StudentID
 List all rows from view ordered by biggest Grade Count
 Create new view (vv_StudentGradeDetails) that will List all Students (FirstName and LastName) and Count the courses he passed through the exam(Ispit) 
 */

 create view vv_StudentGrades
 as
 select studentId, count(grade) as gradeCount
 from grade
 group by StudentID
 go

 alter view vv_StudentGrades
 as
 select s.firstName, s.lastName, count(grade) as gradeCount
 from grade as g
 inner join Student as s on g.StudentID = s.ID
 group by s.FirstName, s.LastName
 go

 select * from vv_StudentGrades
 order by GradeCount desc
 go


create view vv_StudentGradeDetails
as
select s.FirstName + N' ' + s.LastName as StudentName, count(g.CourseID) as CourseCount
from Grade as g
inner join Student as s ON g.StudentID = s.ID
inner join GradeDetails as gd ON g.ID = gd.GradeID
inner join AchievementType as a on gd.AchievementTypeID = a.ID
where a.Name = 'Ispit'
group by s.FirstName, s.LastName