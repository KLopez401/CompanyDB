USE [CompanyDB]
GO
/****** Object:  StoredProcedure [dbo].[AddUser]    Script Date: 10/27/2024 1:49:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[AddUser]
@FirstName nvarchar(50),
@LastName nvarchar(50),
@UserName nvarchar(50),
@PasswordHash nvarchar(MAX),
@RoleID int,
@CompanyId int
AS
begin
	Declare @UserID as uniqueidentifier;

	set @UserID = NEWID();

	insert into Users 
	(
		Id,
		FirstName,
		LastName,
		UserName,
		PasswordHash,
		CompanyId
	)
	values
	(
		@UserID,
		@FirstName,
		@LastName,
		@UserName,
		@PasswordHash,
		@CompanyId
	)

	insert into UserRoles 
	(
		RoleID,
		UserID
	)
	values
	(
		@RoleID,
		@UserID
	)
end
GO
