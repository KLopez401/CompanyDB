if not exists (select * from INFORMATION_SCHEMA.ROUTINES 
           where ROUTINE_TYPE = 'PROCEDURE' 
           and ROUTINE_SCHEMA = 'dbo' 
           and ROUTINE_NAME = 'GetCompanyByUserId')
	exec('create procedure [dbo].[GetCompanyByUserId] as select 1')
go

alter procedure GetCompanyByUserId
@UserId nvarchar(50)
AS
begin
	 select c.*
	 from Companies c
	 inner join Users u on c.Id = u.CompanyId
	 where u.Id = @UserId
end
