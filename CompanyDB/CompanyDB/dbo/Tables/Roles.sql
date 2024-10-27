CREATE TABLE [dbo].[Roles] (
    [Id]   INT           IDENTITY (1, 1) NOT NULL,
    [Name] NVARCHAR (50) NULL,
    CONSTRAINT [pk_RoleID] PRIMARY KEY CLUSTERED ([Id] ASC)
);

