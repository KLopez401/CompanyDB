if not exists (select * from INFORMATION_SCHEMA.ROUTINES 
           where ROUTINE_TYPE = 'PROCEDURE' 
           and ROUTINE_SCHEMA = 'dbo' 
           and ROUTINE_NAME = 'UpdateUser')
	exec('create procedure [dbo].[UpdateUser] as select 1')
go

alter procedure UpdateUser
@UserID uniqueidentifier,
@FirstName nvarchar(50),
@LastName nvarchar(50),
@UserName nvarchar(50),
@PasswordHash nvarchar(MAX),
@RoleID int,
@CompanyId int
AS
begin
	update Users 
	set FirstName = @FirstName,
		LastName = @LastName,
		UserName = @UserName,
		PasswordHash = @PasswordHash,
		CompanyId = @CompanyId
	where Id = @UserID;

	update UserRoles 
	set RoleID = @RoleID
	where UserID = @UserID;
end
