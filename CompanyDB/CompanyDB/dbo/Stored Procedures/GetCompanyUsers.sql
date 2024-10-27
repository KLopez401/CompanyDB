if not exists (select * from INFORMATION_SCHEMA.ROUTINES 
           where ROUTINE_TYPE = 'PROCEDURE' 
           and ROUTINE_SCHEMA = 'dbo' 
           and ROUTINE_NAME = 'GetCompanyUsers')
	exec('create procedure [dbo].[GetCompanyUsers] as select 1')
go

alter procedure GetCompanyUsers
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
