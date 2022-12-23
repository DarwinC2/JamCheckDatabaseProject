USE [JamCheckDatabase]
GO 
CREATE VIEW Vw_ShowAllCars as
-- show all cars
select 
     vt.Name[Vehicle_Types], 
     m.Name [Make], 
     uc.Model, 
     ud.FirstName [UsedCarDealers],
     uc.ChassisNumber ,
     uc.TransmissionNumber,
     uc.Mileage,
     uc.Price 
from Used_Cars uc
inner join Vehicle_Types vt on vt.Id = uc.VehicleTypeId
inner join Make m on m.Id = uc.MakeId
inner join UsedCarDealers ud on ud.Id = uc.UsedCarDealerId