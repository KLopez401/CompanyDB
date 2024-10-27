if not exists (select * from INFORMATION_SCHEMA.ROUTINES 
           where ROUTINE_TYPE = 'PROCEDURE' 
           and ROUTINE_SCHEMA = 'dbo' 
           and ROUTINE_NAME = 'GetRoleById')
	exec('create procedure [dbo].[GetRoleById] as select 1')
go

alter procedure GetRoleById
@Id int
AS
begin
 select * from Roles where Id = @Id
end
