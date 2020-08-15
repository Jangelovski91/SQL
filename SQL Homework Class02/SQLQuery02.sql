/*
Find all Students with FirstName = Antonio ordered by Last Name
List all Students ordered by FirstName
Find all Male students ordered by EnrolledDate, starting from the last enrolled
*/

select * from Student
where FirstName = 'Antonio'
order by LastName asc

select * from Student
order by FirstName

select * from Student
where Gender = 'M'
order by EnrolledDate desc