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
-- Description:	<Customer Transaction Type>
-- =============================================
alter FUNCTION fnc_CustomerTransType
(
	
)
RETURNS 
@TransType TABLE 
(
	-- Add the column definitions for the TABLE variable here
	
	Name varchar (50),
	TransCode int,
	TransType nvarchar (20)


)
AS
BEGIN
	-- Fill the table variable with the rows for your result set
	INSERT INTO @TransType
	SELECT 
	
	FirstName+' '+LastName [Full Name],
	t.TransactionTypeId,
	tt.Transaction_name [Type of Transaction]
	FROM Customers c
	inner join  Transactions t on c.Id =  t.CustomerId
	inner join Transaction_Types tt on tt.Id = t.TransactionTypeId
	where tt.Transaction_name = 'Buying'
	
	INSERT INTO @TransType
	SELECT 

	FirstName+' '+LastName [Full Name],
	t.TransactionTypeId,
	tt.Transaction_name [Type of Transaction]
	FROM Customers c
	inner join  Transactions t on c.Id =  t.CustomerId
	inner join Transaction_Types tt on tt.Id = t.TransactionTypeId
	where tt.Transaction_name = 'Selling'
	RETURN 
END
GO