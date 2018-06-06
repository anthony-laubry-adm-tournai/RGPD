CREATE TABLE [dbo].[Fichier] (
    [Id]    BIGINT        IDENTITY (1, 1) NOT NULL,
    [IdTrt] BIGINT        NOT NULL,
    [Path]  VARCHAR (MAX) NOT NULL,
    [Nom]   VARCHAR (MAX) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

