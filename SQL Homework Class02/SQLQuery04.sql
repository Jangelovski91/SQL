/*
Change GradeDetails table always to insert value 100 in AchievementMaxPoints column if no value is provided on insert
Change GradeDetails table to prevent inserting AchievementPoints that will more than AchievementMaxPoints
Change AchievementType table to guarantee unique names across the Achievement types
*/

alter table GradeDetails
add constraint DF_AchievementMaxPoints
default 100 for AchievementMaxPoints

alter table GradeDetails
add constraint CHK_AchievementPoints
check (AchievementPoints <= AchievementMaxPoints )

alter table AchievementType
add constraint UC_Name unique (Name)