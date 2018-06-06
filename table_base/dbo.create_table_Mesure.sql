CREATE TABLE [dbo].[Mesure] (
    [Id]          BIGINT       IDENTITY (1, 1) NOT NULL,
    [Type]        VARCHAR (40) NULL,
    [Titre]       VARCHAR (75) NOT NULL,
    [Description] TEXT         NULL,
    [Tooltip]     TEXT         NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

