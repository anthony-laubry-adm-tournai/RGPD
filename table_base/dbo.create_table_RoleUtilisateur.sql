CREATE TABLE [dbo].[RoleUtilisateur] (
    [IdRole]        BIGINT NOT NULL,
    [IdUtilisateur] BIGINT NOT NULL,
    FOREIGN KEY ([IdRole]) REFERENCES [dbo].[Role] ([Id])
);

