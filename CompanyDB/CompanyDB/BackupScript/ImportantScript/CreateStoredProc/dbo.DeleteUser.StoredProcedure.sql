USE [CompanyDB]
GO
/****** Object:  StoredProcedure [dbo].[DeleteUser]    Script Date: 10/27/2024 1:49:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create procedure [dbo].[DeleteUser]
@UserID uniqueidentifier
AS
begin
	delete from UserRoles 
	where UserID = @UserID;

	delete from Users 
	where Id = @UserID;
end
GO
