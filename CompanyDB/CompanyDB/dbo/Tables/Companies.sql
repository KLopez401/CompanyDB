CREATE TABLE [dbo].[Companies] (
    [Id]   INT           IDENTITY (1, 1) NOT NULL,
    [Name] NVARCHAR (50) NULL,
    CONSTRAINT [pk_CompanyId] PRIMARY KEY CLUSTERED ([Id] ASC)
);

