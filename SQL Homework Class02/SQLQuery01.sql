/*
Find all Students with FirstName = Antonio
Find all Students with DateOfBirth greater than ‘01.01.1999’
Find all Male students
Find all Students with LastName starting With ‘T’
Find all Students Enrolled in January/1998
Find all Students with LastName starting With ‘J’ enrolled in January/1998
*/

select * from Student
where FirstName = 'Antonio'

select * from Student
where DateOfBirth > '1999.01.01'

select * from Student
where Gender = 'm'

select * from Student
where LastName like 'T%'

select * from Student
where EnrolledDate between '1998.01.01' and '1998.01.31'

select * from Student
where EnrolledDate between '1998.01.01' and '1998.01.31'
and LastName like 'J%'