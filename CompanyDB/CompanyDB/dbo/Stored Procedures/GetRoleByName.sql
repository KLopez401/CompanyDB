if not exists (select * from INFORMATION_SCHEMA.ROUTINES 
           where ROUTINE_TYPE = 'PROCEDURE' 
           and ROUTINE_SCHEMA = 'dbo' 
           and ROUTINE_NAME = 'GetRoleByName')
	exec('create procedure [dbo].[GetRoleByName] as select 1')
go

alter procedure GetRoleByName
@RoleName nvarchar(50)
AS
begin
 select * from Roles where [Name] = @RoleName
end
