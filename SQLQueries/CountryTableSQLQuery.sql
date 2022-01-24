Create table Country(
CountryId int primary key identity(1,1), 
CountryName varchar(50)
)

INSERT into Country VALUES ('India')

INSERT into Country VALUES ('United Arab Emirates')
INSERT into Country VALUES ('Nepal')
INSERT into Country VALUES ('Bangladesh')
INSERT into Country VALUES ('Pakistan')
INSERT into Country VALUES ('Afghanistan')

Select * from Country
