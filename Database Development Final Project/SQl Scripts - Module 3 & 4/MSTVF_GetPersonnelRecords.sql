-- ================================================
-- Template generated from Template Explorer using:
-- Create Multi-Statement Function (New Menu).SQL
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
-- Create date: <December 05, 2022>
-- Description:	<Personnel Status>
-- =============================================
CREATE FUNCTION fnc_GetPersonnelStatus
(
	
)
RETURNS 
@Persons TABLE 
(
	-- Add the column definitions for the TABLE variable here
	Name nvarchar (50),
	PersonType nvarchar (20)
)
AS
BEGIN
	-- Fill the table variable with the rows for your result set
	INSERT INTO @Persons
	SELECT 
	FirstName+' '+LastName [Full Name],
	'Customer' [Type of Personnel]
	FROM Customers


	INSERT INTO @Persons
	SELECT 
	FirstName+' '+LastName [Full Name],
	'Used Car Dealer' [Type of Personnel]
	FROM UsedCarDealers
	RETURN 
END
GO