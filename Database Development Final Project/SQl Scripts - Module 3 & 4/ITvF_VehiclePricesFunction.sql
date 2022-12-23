USE [JamCheckDatabase]
GO

/****** Object:  UserDefinedFunction [dbo].[fnc_VehiclePrices]    Script Date: 12/5/2022 9:58:58 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<David Samuels>
-- Create date: <December 11, 2022>
-- Description:	<Vehicle Prices of specific makes>
-- =============================================
CREATE FUNCTION [dbo].[fnc_VehiclePrices] 
(	
	@VehiclePrice int
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	   SELECT 
        VehicleTypeId,
		vt.Name [Type of Vehicle],
		m.Name [Make of Vehicle],
		Price [Vehicle Price]
		
    FROM
        Used_Cars
		Inner join Vehicle_Types vt on vt.Id = Used_Cars.VehicleTypeId
    WHERE
        VehicleTypeId = @VehiclePrice
		

)
GO


