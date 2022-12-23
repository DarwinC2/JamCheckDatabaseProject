-- ================================================
-- Template generated from Template Explorer using:
-- Create Scalar Function (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the function.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<David Samuels>
-- Create date: <November 22, 2022>
-- Description:	<Lowest Priced Vehicle>
-- =============================================
create FUNCTION fnc_GetLowestPrice 
(
	-- Add the parameters for the function here
	--<@Param1, sysname, @p1> <Data_Type_For_Param1, , int>
)
RETURNS float
AS
BEGIN
	-- Declare the return variable here
	DECLARE @LowestPrice float

	-- Add the T-SQL statements to compute the return value here
	SELECT @LowestPrice = Min(Price) From Used_Cars

	-- Return the result of the function
	RETURN @LowestPrice 

END
GO

