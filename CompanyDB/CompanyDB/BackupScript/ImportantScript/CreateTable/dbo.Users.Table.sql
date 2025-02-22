USE [CompanyDB]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 10/27/2024 1:49:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [uniqueidentifier] NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[UserName] [nvarchar](50) NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[CompanyID] [int] NOT NULL,
 CONSTRAINT [pk_UserID] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_CompanyID] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[Companies] ([Id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_CompanyID]
GO
