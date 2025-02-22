USE [CompanyDB]
GO
/****** Object:  StoredProcedure [dbo].[GetAllUser]    Script Date: 10/27/2024 1:49:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[GetAllUser]
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
GO
