create table Departments(
Id int identity(1,1) PRIMARY KEY NOT NULL,
Building int NOT NULL CHECK(Building > 1 AND Building < 5),
Financing money NOT NULL DEFAULT 0,
Name nvarchar(100) NOT NULL UNIQUE,
)

CREATE TABLE Examinations(
Id int identity(1, 1) PRIMARY KEY NOT NULL,
DayOfWeek int NOT NULL CHECK(DayOfWeek > 0 AND DayOfWeek < 7),
EndTime time NOT NULL,
DoctorID int not null FOREIGN KEY REFERENCES Doctors(id),
ExaminationId int not null FOREIGN KEY REFERENCES Examinations(id),
WardId int not null FOREIGN KEY REFERENCES Wards(id),
/*CONSTRAINT chk_EndTime check (EndTime > StartTime),*/
)

insert into Departments(Building, Financing, Name)
values(3, 20000, 'Test_Name');

select * from Departments;

insert into Departments(Building, Name)
values(2, 'Test_Name_3');

select * from Departments
