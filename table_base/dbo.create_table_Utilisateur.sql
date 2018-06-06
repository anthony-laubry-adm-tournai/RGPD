CREATE TABLE [dbo].[Utilisateur] (
    [Id]          BIGINT       IDENTITY (1, 1) NOT NULL,
    [DisplayName] VARCHAR (50) NOT NULL,
    [LogonName]   VARCHAR (25) NOT NULL,
    [IdService]   BIGINT       NULL,
    [MotPasse]    VARCHAR (75) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([IdService]) REFERENCES [dbo].[Service] ([Id])
);

