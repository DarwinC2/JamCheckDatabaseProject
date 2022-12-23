USE [JamCheckDatabase]
GO 
CREATE VIEW Vw_CarWNoAccidentReports as
--show cars that dont have accident report
select 
     uc.Model[Model], 
     uc.ChassisNumber [ChassisNumber], 
     uc.TransmissionNumber [TransmissionNumber], 
     uc.Mileage[Mileage],
     uc.Price,
     cr.AccidentReport
from Car_Reports cr
inner join Used_cars uc on uc.Id= cr.UsedCarID
WHERE AccidentReport = 'No'