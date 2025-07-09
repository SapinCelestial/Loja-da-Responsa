CREATE TABLE [dbo].[Distribuicoes] (
    [DistribuicaoID]   INT  IDENTITY (1, 1) NOT NULL,
	[Item]      NVARCHAR (100) NULL,
    [Beneficiario]     NVARCHAR (100) NULL,
    [DataDistribuicao]  
    PRIMARY KEY CLUSTERED ([DistribuicaoID] ASC),
   
);

