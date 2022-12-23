use JamCheckDatabase

--This function shows the vehicle or used car with the highest price
select [dbo].[fnc_GetHighestPrice] () as [Highest Price]

--This function shows the vehicle or used car with the lowest price
select [dbo].[fnc_GetLowestPrice] () as [Lowest Price]

--This function shows  the price range of Vehicles from lowest to highest value entered
select* from [dbo].[fnc_GetPriceRange] (2800000,4500000) 

-- Find Prices of Specific makes of Vehicles by entering MakeId value
select * from [dbo].[fnc_VehiclePrices] (4)


-- Functions shows Customers who bought cars and customers who sold cars
select * from[dbo].[fnc_CustomerTransType] ()

-- Status of the personnel in the database, whether they are a customer or a Used Car Dealer
select * from[dbo].[fnc_GetPersonnelStatus] ()


