if not exists (select * from INFORMATION_SCHEMA.ROUTINES 
           where ROUTINE_TYPE = 'PROCEDURE' 
           and ROUTINE_SCHEMA = 'dbo' 
           and ROUTINE_NAME = 'GerUserRoles')
	exec('create procedure [dbo].[GerUserRoles] as select 1')
go

alter procedure GerUserRoles
@UserId uniqueidentifier
as
begin
	SELECT r.Name 
    FROM Roles r
    INNER JOIN UserRoles ur ON r.Id = ur.RoleId
    WHERE ur.UserId = @UserId
end
