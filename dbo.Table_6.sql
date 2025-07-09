CREATE TABLE [dbo].[Distribuicoes] (
    [Item]         VARCHAR (100) NULL,
    [Beneficiario]        VARCHAR (100) NULL,
    [DataDistribuição] DATETIME      DEFAULT (getdate()) NULL,
);

