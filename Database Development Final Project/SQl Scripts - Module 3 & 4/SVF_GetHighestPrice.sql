USE [JamCheckDatabase]
GO

/****** Object:  UserDefinedFunction [dbo].[fnc_GetHighestPrice]    Script Date: 11/30/2022 1:05:52 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<DarwinDallas>
-- Create date: <December 22, 2022>
-- Description:	<Highest Priced Vehicle>
-- =============================================
create FUNCTION [dbo].[fnc_GetHighestPrice] 
(
	-- Add the parameters for the function here
	--<@Param1, sysname, @p1> <Data_Type_For_Param1, , int>
)
RETURNS float
AS
BEGIN
	-- Declare the return variable here
	DECLARE @HighestPrice float

	-- Add the T-SQL statements to compute the return value here
	SELECT @HighestPrice = Max(Price) From Used_Cars

	-- Return the result of the function
	RETURN @HighestPrice 

END
GO


