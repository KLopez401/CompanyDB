USE [CompanyDB]
GO
/****** Object:  StoredProcedure [dbo].[GetRoleByName]    Script Date: 10/27/2024 1:49:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[GetRoleByName]
@RoleName nvarchar(50)
AS
begin
 select * from Roles where [Name] = @RoleName
end
GO
