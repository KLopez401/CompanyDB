USE [CompanyDB]
GO
/****** Object:  StoredProcedure [dbo].[GetCompanyUsers]    Script Date: 10/27/2024 1:49:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create procedure [dbo].[GetCompanyUsers]
@CompanyId int
AS
begin
	 select 
	 u.FirstName,
	 u.LastName,
	 u.UserName,
	 c.Name as CompanyName
	 from Users u
	 inner join Companies c on u.CompanyId = c.Id
	 where c.Id = @CompanyId
end
GO
