USE [JamCheckDatabase]
GO


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Vw_AllTransactions] as

select * from Transactions
GO
