CREATE TABLE [dbo].[ItensDoados] (
    [ID]          INT           IDENTITY (1, 1) NOT NULL,
    [Nome]        VARCHAR (100) NULL,
    [Descricao]       VARCHAR (100) NULL,
    [Categoria]    VARCHAR (50)  NULL,
    [Doador]    VARCHAR (150) NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC)
);

