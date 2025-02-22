USE [CompanyDB]
GO
/****** Object:  StoredProcedure [dbo].[GerUserRoles]    Script Date: 10/27/2024 1:49:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[GerUserRoles]
@UserId uniqueidentifier
as
begin
	SELECT r.Name 
    FROM Roles r
    INNER JOIN UserRoles ur ON r.Id = ur.RoleId
    WHERE ur.UserId = @UserId
end
GO
