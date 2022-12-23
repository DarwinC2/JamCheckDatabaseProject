USE [JamCheckDatabase]
GO


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Vw_UsedCarDealers] as
--show all aggregate values
select * from UsedCarDealers
GO
