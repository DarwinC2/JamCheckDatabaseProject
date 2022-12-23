USE [JamCheckDatabase]
GO
/****** Object:  StoredProcedure [dbo].[spInsert_CarMake]    Script Date: 12/6/2022 10:01:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Darwin Dallas>
-- Create date: <December 06, 2022>
-- Description:	<Input Parameter Customer Name>
-- =============================================
CREATE PROCEDURE spSelect_FindCustomerName

@Person nvarchar (40) = '%'
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT FirstName, LastName FROM Customers
	Where Customers.FirstName LIKE @Person 
	

END

