--Roles
insert into Roles (Name)
values ('Admin')
go

insert into Roles (Name)
values ('User')
go

--Companies
insert into Companies (Name)
values ('Apple')
go

insert into Companies (Name)
values ('Samsung')
go

insert into Companies (Name)
values ('Xiaomi')
go

insert into Companies (Name)
values ('Nokia')
go

insert into Companies (Name)
values ('Twitter')
go

insert into Companies (Name)
values ('Meta')
go

insert into Companies (Name)
values ('Snapchat')
go

insert into Companies (Name)
values ('Google')
go

--Users
insert into Users (Id, FirstName, LastName, UserName, PasswordHash, CompanyID)
values ('A2C2575F-FE72-4FAF-948E-25BC939F7CFA', 'User', 'test', 'usertest', '$2a$11$ewidAhAFxrSCQoYkm9EbKeMisM8lC.E8RcGAWpOK6o.EOSecolhwi',	3)
go

insert into Users (Id, FirstName, LastName, UserName, PasswordHash, CompanyID)
values ('142E7110-7DE6-421A-B266-39CCB202DE62', 'Admin', 'test', 'admintest', '$2a$11$jnR91aQhea15J/PmD7vEB.iPb9d8igm5bPIicX.vMrGcSUtB0Ibg6', 5)
go

--UserRoles
insert into UserRoles (UserID, RoleID)
values ('142E7110-7DE6-421A-B266-39CCB202DE62', 1)
go

insert into UserRoles (UserID, RoleID)
values ('A2C2575F-FE72-4FAF-948E-25BC939F7CFA', 2)
go