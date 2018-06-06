﻿CREATE TABLE [dbo].[Traitement] (
    [Id]                   BIGINT       IDENTITY (1, 1) NOT NULL,
    [IdService]            BIGINT       DEFAULT ((0)) NULL,
    [AgEncodeur]           VARCHAR (50) DEFAULT ('A modifier') NULL,
    [AgEval]               VARCHAR (50) DEFAULT ('A modifier') NULL,
    [AgVali]               VARCHAR (50) DEFAULT ('A modifier') NULL,
    [DateCrea]             VARCHAR (50) NULL,
    [DateModif]            VARCHAR (50) NULL,
    [NomTrt]               VARCHAR (50) NULL,
    [ToControlContact]     BIT          DEFAULT ((0)) NULL,
    [ToControlDPD]         BIT          DEFAULT ((0)) NULL,
    [ToModify]             BIT          DEFAULT ((0)) NULL,
    [IsValid]              BIT          DEFAULT ((0)) NULL,
    [LstDonnePers]         TEXT         NULL,
    [LstDonneSen]          TEXT         NULL,
    [DurConsDonne]         BIGINT       DEFAULT ((1)) NULL,
    [Legitimation]         INT          DEFAULT ((1)) NULL,
    [Commentaire]          TEXT         NULL,
    [IsOpen]               BIT          DEFAULT ((0)) NOT NULL,
    [RemContact]           TEXT         NULL,
    [RemDPD]               TEXT         NULL,
    [SupportDonnee]        TEXT         NULL,
    [DonneeExactAJour]     BIT          DEFAULT ((0)) NULL,
    [Finalite]             INT          DEFAULT ((1)) NULL,
    [Pconcerne]            INT          NULL,
    [IsActif]              BIT          DEFAULT ((1)) NOT NULL,
    [GestionSousTraitance] TEXT         NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

