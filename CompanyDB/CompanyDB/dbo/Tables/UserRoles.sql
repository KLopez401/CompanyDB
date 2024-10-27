CREATE TABLE [dbo].[UserRoles] (
    [Id]     INT              IDENTITY (1, 1) NOT NULL,
    [UserID] UNIQUEIDENTIFIER NOT NULL,
    [RoleID] INT              NOT NULL,
    CONSTRAINT [pk_UserAccountID] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_RoleID] FOREIGN KEY ([RoleID]) REFERENCES [dbo].[Roles] ([Id]),
    CONSTRAINT [FK_UserID] FOREIGN KEY ([UserID]) REFERENCES [dbo].[Users] ([Id])
);

