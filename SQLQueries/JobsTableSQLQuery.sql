Create table Jobs(
JobId  int primary key identity(1,1),
Title varchar(50),
NumberofPosts int,
Description varchar(MAX),
Qualificaiton varchar(50),
Experience varchar(50),
Specialization varchar(MAX),
LastDatetoApply Date, 
Salary varchar(50),
JobType varchar(50),
CompanyName varchar(200),
CompanyImage varchar(500),
Website varchar(100),
Email varchar(50),
Address varchar(MAX),
Country varchar(50),
State varchar(50),
CreateDate datetime
)

Select * from Jobs

Alter table Jobs 
drop Column Qualificaiton

Select * from Jobs

Alter table Jobs 
drop Column NumberofPosts


Alter table Jobs add Qualification varchar(50)


Alter table Jobs add NoOfPost int
