USE [CompanyDB]
GO
/****** Object:  StoredProcedure [dbo].[GetCompanyById]    Script Date: 10/27/2024 1:49:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[GetCompanyById]
@CompanyId int
AS
begin
	 select *
	 from Companies 
	 where Id = @CompanyId
end
GO
