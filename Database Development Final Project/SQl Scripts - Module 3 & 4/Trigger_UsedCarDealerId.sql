-- ================================================
-- Template generated from Template Explorer using:
-- Create Trigger (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- See additional Create Trigger templates for more
-- examples of different Trigger statements.
--
-- This block of comments will not be included in
-- the definition of the function.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER dbo.AssignCarDealerIdToUsedCarsRecord
   ON  dbo.Used_Cars
   AFTER INSERT
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here
	Declare @UsedCarDealerId int
	Declare @Id int
	select @UsedCarDealerId = UsedCarDealerId, @Id= Id from inserted
	
	IF  @UsedCarDealerId IS NULL
	BEGIN
	UPDATE Used_Cars SET UsedCarDealerId = 8 WHERE ID = @Id
END
END
GO
