USE [CompanyDB]
GO
/****** Object:  StoredProcedure [dbo].[GetCompanyByUserId]    Script Date: 10/27/2024 1:49:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[GetCompanyByUserId]
@UserId nvarchar(50)
AS
begin
	 select c.*
	 from Companies c
	 inner join Users u on c.Id = u.CompanyId
	 where u.Id = @UserId
end
GO
