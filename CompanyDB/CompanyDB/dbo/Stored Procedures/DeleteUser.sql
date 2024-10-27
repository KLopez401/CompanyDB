if not exists (select * from INFORMATION_SCHEMA.ROUTINES 
           where ROUTINE_TYPE = 'PROCEDURE' 
           and ROUTINE_SCHEMA = 'dbo' 
           and ROUTINE_NAME = 'DeleteUser')
	exec('create procedure [dbo].[DeleteUser] as select 1')
go

alter procedure DeleteUser
@UserID uniqueidentifier
AS
begin
	delete from UserRoles 
	where UserID = @UserID;

	delete from Users 
	where Id = @UserID;
end
