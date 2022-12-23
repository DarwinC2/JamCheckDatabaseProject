-- ================================================
-- Template generated from Template Explorer using:
-- Create Inline Function (New Menu).SQL
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
-- Author:		<Darwin Dallas>
-- Create date: <November 30, 2022>
-- Description:	<Price Range of used cars>
-- =============================================
CREATE FUNCTION  fnc_GetPriceRange
(	
	-- Add the parameters for the function here
	@minPrice float,
	@maxPrice float
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT Price from Used_Cars
	Where Price Between @minPrice AND @MaxPrice
)
GO
