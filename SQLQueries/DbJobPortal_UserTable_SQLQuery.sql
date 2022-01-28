Create table [User](
UserId int primary key identity(1,1),
Username varchar(50),
Password varchar(50),
Name varchar(50),
Email varchar(50),
Mobile varchar(50),
TenthGrade varchar(50),
TwelfthGrade varchar(50),
GraduationGrade varchar(50),
PostGraduationGrade varchar(50),
Phd varchar(50),
WorksOn varchar(50),
Experience varchar(50),
Resume varchar(50),
Address varchar(MAX),
Country varchar(50)
)

alter table [User]
add unique (Username)


Select * from [User]