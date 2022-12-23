/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [Types Of Vehicles]
      ,[Vehicle Model]
      ,[Price Of Vehicles]
      ,[Used Car Dealer Names]
      ,[Car Dealers' City]
  FROM [JamCheckDatabase].[dbo].[vw_UsedCarInfo_and_Dealers]