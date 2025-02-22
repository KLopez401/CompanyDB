USE [CompanyDB]
GO
/****** Object:  StoredProcedure [dbo].[GetUserByUserName]    Script Date: 10/27/2024 1:49:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[GetUserByUserName]
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
GO
