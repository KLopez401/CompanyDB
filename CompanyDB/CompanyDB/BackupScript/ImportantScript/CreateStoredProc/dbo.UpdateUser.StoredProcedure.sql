USE [CompanyDB]
GO
/****** Object:  StoredProcedure [dbo].[UpdateUser]    Script Date: 10/27/2024 1:49:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[UpdateUser]
@UserID uniqueidentifier,
@FirstName nvarchar(50),
@LastName nvarchar(50),
@UserName nvarchar(50),
@PasswordHash nvarchar(MAX),
@RoleID int,
@CompanyId int
AS
begin
	update Users 
	set FirstName = @FirstName,
		LastName = @LastName,
		UserName = @UserName,
		PasswordHash = @PasswordHash,
		CompanyId = @CompanyId
	where Id = @UserID;

	update UserRoles 
	set RoleID = @RoleID
	where UserID = @UserID;
end
GO
