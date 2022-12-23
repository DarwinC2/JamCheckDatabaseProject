USE [JamCheckDatabase]
GO 
CREATE VIEW Vw_AggregateValues as
--show all aggregate values
Select
 COUNT (Price) [Number of Cars]
,MAX (Price) [Highest Price]
,MIN (Price) [Lowest Price]
From [JamCheckDatabase].[dbo].[Used_Cars] uc
