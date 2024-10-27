if not exists (select * from INFORMATION_SCHEMA.ROUTINES 
           where ROUTINE_TYPE = 'PROCEDURE' 
           and ROUTINE_SCHEMA = 'dbo' 
           and ROUTINE_NAME = 'GetAllUser')
	exec('create procedure [dbo].[GetAllUser] as select 1')
go

alter procedure GetAllUser
AS
begin
	select 
	u.Id as UserID,
	u.FirstName, 
	u.LastName, 
	u.UserName,
	r.Name as RoleName,
	c.Name as CompanyName
	from Users u 
	inner join UserRoles ur on u.Id = ur.UserID
	inner join Roles r on ur.RoleID = r.Id
	inner join Companies c on u.CompanyID = c.Id
end
