if not exists (select * from INFORMATION_SCHEMA.ROUTINES 
           where ROUTINE_TYPE = 'PROCEDURE' 
           and ROUTINE_SCHEMA = 'dbo' 
           and ROUTINE_NAME = 'AddUser')
	exec('create procedure [dbo].[AddUser] as select 1')
go

alter procedure AddUser
@FirstName nvarchar(50),
@LastName nvarchar(50),
@UserName nvarchar(50),
@PasswordHash nvarchar(MAX),
@RoleID int,
@CompanyId int
AS
begin
	Declare @UserID as uniqueidentifier;

	set @UserID = NEWID();

	insert into Users 
	(
		Id,
		FirstName,
		LastName,
		UserName,
		PasswordHash,
		CompanyId
	)
	values
	(
		@UserID,
		@FirstName,
		@LastName,
		@UserName,
		@PasswordHash,
		@CompanyId
	)

	insert into UserRoles 
	(
		RoleID,
		UserID
	)
	values
	(
		@RoleID,
		@UserID
	)
end
