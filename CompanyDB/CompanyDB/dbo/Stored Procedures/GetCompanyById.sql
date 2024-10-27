if not exists (select * from INFORMATION_SCHEMA.ROUTINES 
           where ROUTINE_TYPE = 'PROCEDURE' 
           and ROUTINE_SCHEMA = 'dbo' 
           and ROUTINE_NAME = 'GetCompanyById')
	exec('create procedure [dbo].[GetCompanyById] as select 1')
go

alter procedure GetCompanyById
@CompanyId int
AS
begin
	 select *
	 from Companies 
	 where Id = @CompanyId
end
