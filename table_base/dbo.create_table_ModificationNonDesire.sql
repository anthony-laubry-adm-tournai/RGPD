CREATE TABLE [dbo].[ModificationNonDesire] (
    [Id]            BIGINT IDENTITY (1, 1) NOT NULL,
    [IdTrt]         BIGINT NOT NULL,
    [LstMenace]     TEXT   NULL,
    [LstSource]     TEXT   NULL,
    [LstMesure]     TEXT   NULL,
    [Gravite]       INT    NULL,
    [Vraisemblance] INT    NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

