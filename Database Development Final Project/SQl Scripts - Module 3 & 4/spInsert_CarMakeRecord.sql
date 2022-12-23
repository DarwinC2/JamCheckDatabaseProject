-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Darwin Dallas>
-- Create date: <December 06, 2022>
-- Description:	<Insert Record in Car Make>
-- =============================================
CREATE PROCEDURE spInsert_CarMake

@name nvarchar (50),
@Id int OutPut
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO Make VALUES
	(@name) 
	select @Id = SCOPE_IDENTITY() 

END

