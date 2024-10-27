if not exists (select * from INFORMATION_SCHEMA.ROUTINES 
           where ROUTINE_TYPE = 'PROCEDURE' 
           and ROUTINE_SCHEMA = 'dbo' 
           and ROUTINE_NAME = 'GetUserByUserName')
	exec('create procedure [dbo].[GetUserByUserName] as select 1')
go

alter procedure GetUserByUserName
@UserName nvarchar(50)
AS
begin
	select 
	u.Id, 
	u.FirstName, 
	u.LastName, 
	u.UserName,
	u.PasswordHash,
	ur.RoleID, 
	r.Name as RoleName,
	c.Id as CompanyId,
	c.Name as CompanyName
	from Users u 
	inner join UserRoles ur on u.Id = ur.UserID
	inner join Roles r on ur.RoleID = r.Id
	inner join Companies c on u.CompanyID = c.Id
	where u.UserName = @UserName
end
