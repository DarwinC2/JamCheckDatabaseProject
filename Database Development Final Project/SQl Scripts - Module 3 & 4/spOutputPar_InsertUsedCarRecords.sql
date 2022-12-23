USE [JamCheckDatabase]
GO
/****** Object:  StoredProcedure [dbo].[spInsert_CarMake]    Script Date: 12/10/2022 7:01:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Darwin Dallas>
-- Create date: <December 06, 2022>
-- Description:	<Insert Record in Used_Cars Table>
-- =============================================
alter PROCEDURE [dbo].[spOutputPart_InserUsedCarRecord]
@VehicleId int = null,
@MakeId int = null,
@UsedCarDealerId int = null,
@Model nvarchar (50),
@ChassisNumber nvarchar (50),
@TransmissionNumber nvarchar (50),
@Mileage nvarchar (50),
@Price float = 0,
@Id int Output

	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO Used_Cars VALUES
(@VehicleId, @MakeId, @UsedCarDealerId, @Model, @ChassisNumber,
@TransmissionNumber, @Mileage,@Price)

	select @Id = SCOPE_IDENTITY() 

END

