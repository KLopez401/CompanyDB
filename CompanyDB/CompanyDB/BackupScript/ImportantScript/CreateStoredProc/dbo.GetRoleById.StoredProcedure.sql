USE [CompanyDB]
GO
/****** Object:  StoredProcedure [dbo].[GetRoleById]    Script Date: 10/27/2024 1:49:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[GetRoleById]
@Id int
AS
begin
 select * from Roles where Id = @Id
end
GO
