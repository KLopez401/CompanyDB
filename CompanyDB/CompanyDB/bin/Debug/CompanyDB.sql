﻿/*
Deployment script for CompanyDB

This code was generated by a tool.
Changes to this file may cause incorrect behavior and will be lost if
the code is regenerated.
*/

GO
SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, CONCAT_NULL_YIELDS_NULL, QUOTED_IDENTIFIER ON;

SET NUMERIC_ROUNDABORT OFF;


GO
:setvar DatabaseName "CompanyDB"
:setvar DefaultFilePrefix "CompanyDB"
:setvar DefaultDataPath "C:\Users\Karen Lopez\AppData\Local\Microsoft\VisualStudio\SSDT\CompanyDB"
:setvar DefaultLogPath "C:\Users\Karen Lopez\AppData\Local\Microsoft\VisualStudio\SSDT\CompanyDB"

GO
:on error exit
GO
/*
Detect SQLCMD mode and disable script execution if SQLCMD mode is not supported.
To re-enable the script after enabling SQLCMD mode, execute the following:
SET NOEXEC OFF; 
*/
:setvar __IsSqlCmdEnabled "True"
GO
IF N'$(__IsSqlCmdEnabled)' NOT LIKE N'True'
    BEGIN
        PRINT N'SQLCMD mode must be enabled to successfully execute this script.';
        SET NOEXEC ON;
    END


GO
USE [$(DatabaseName)];


GO
PRINT N'Creating Procedure [dbo].[AddUser]...';


GO
create procedure AddUser
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
PRINT N'Update complete.';


GO
