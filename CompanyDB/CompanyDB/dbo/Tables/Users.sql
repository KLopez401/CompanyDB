CREATE TABLE [dbo].[Users] (
    [Id]           UNIQUEIDENTIFIER NOT NULL,
    [FirstName]    NVARCHAR (50)    NULL,
    [LastName]     NVARCHAR (50)    NULL,
    [UserName]     NVARCHAR (50)    NULL,
    [PasswordHash] NVARCHAR (MAX)   NULL,
    [CompanyID]    INT              NOT NULL,
    CONSTRAINT [pk_UserID] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CompanyID] FOREIGN KEY ([CompanyID]) REFERENCES [dbo].[Companies] ([Id])
);

