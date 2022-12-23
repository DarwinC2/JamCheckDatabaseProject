use [JamCheckDatabase]
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



--show car cost over 2,000,0000
select 
     vt.Name[Vehicle_Types], 
     m.Name [Make], 
     uc.Model [Model], 
     ud.FirstName+' '+ ud.LastName [UsedCarDealers],
     uc.ChassisNumber [ChassisNumber],
     uc.TransmissionNumber [TransmissionNumber],
     uc.Mileage[Mileage],
     uc.Price [Mileage]
from Used_Cars uc
inner join Vehicle_Types vt on vt.Id = uc.VehicleTypeId
inner join Make m on m.Id = uc.MakeId
inner join UsedCarDealers ud on ud.Id = uc.UsedCarDealerId
WHERE uc.Price>2000000.00


--show cars that dont have accident report
select 
     uc.Model[Model], 
     uc.ChassisNumber [ChassisNumber], 
     uc.TransmissionNumber [TransmissionNumber], 
     uc.Mileage[Mileage],
     uc.Price ,
     cr.AccidentReport
from Car_Reports cr
inner join Used_cars uc on uc.Id= cr.UsedCarID
WHERE AccidentReport = 'No'


-- Show Full Car Descriptions
select 
vt.Name [Type of Vehicle],
m.Name [Vehicle Make],
uc.Model,
uc.MakeId,
uc.VehicleTypeId

from Used_Cars uc
inner join Vehicle_Types vt on vt.Id = uc.VehicleTypeId
inner join Make m on m.Id = uc.MakeId


 

 --Show Customer Transactions
select 

	c.FirstName+' '+ c.LastName [Customer Name],
	c.Phone [Phone Number],
	tt.Transaction_name [Type of Transaction],
	t.TransactionTypeId [Transaction Type Id]

from Transactions t
left join  Customers c on c.Id  = t.CustomerId
inner join Transaction_Types tt on tt.Id = t.TransactionTypeId
--GROUP BY c.FirstName, c.LastName, c.Phone, tt.Transaction_name, t.TransactionTypeId



-- Count/MAX/MIN Aggregate View
Select
 COUNT (Price) [Number of Cars]
,MAX (Price) [Highest Price]
,MIN (Price) [Lowest Price]
From [JamCheckDatabase].[dbo].[Used_Cars] uc



--update cars that are buying to selling where customer is 'Talia'
UPDATE Transactions
set TransactionTypeId=2
WHERE CustomerId = 3


--update car dealer address where State is Kingston to St. Andrew
UPDATE UsedCarDealers
set State='St. Andrew' 
WHERE State = 'Kingston'


--update cars to less $100,000
UPDATE Used_Cars
set Price=Price+100000.00 
where Id = 6


UPDATE Make
set Name = 'BMW'
where Name = 'BWM'


--remove Cart report record where Id '8'is located 
DELETE FROM Car_Reports WHERE Id = 8


--Insert rows in Car_Reports Table
INSERT INTO Car_Reports VALUES
(1,4,'No','No'),
(2,2,'No','No')


-- Insert rows in Used_Cars Table
INSERT INTO Used_Cars VALUES
(2,4,3,'G4','SUB5678555', 'T34568444', '545678km', 2600000.00),
(4,2,5,'CRV','HDA334777', 'T45678333', '99545km', 3300000.00)







