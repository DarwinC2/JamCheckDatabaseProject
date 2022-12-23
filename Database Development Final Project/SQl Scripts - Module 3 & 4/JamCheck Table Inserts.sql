use JamCheckDatabase;

--insert data into Used Car table
insert into UsedCarDealers (FirstName,LastName, Street, City, State, PostalCode, Phone)values
('John','Doe', 'Pembroke Lane','Kingston', 'Kingston','Kingston 17', '(876)923-3923'),
('Mike','Pence', 'Deanery Road','Vinyard Town', 'Kingston','Kingston 16',  '(876)432-3451'),
('Bryan','McKnight', 'Job Lane','Spanish Town', 'St.Catherine','Spanish Town P.O', '(876)485-5984'),
('David','Brown', 'Holbourn Road','Mandeville', 'Manchester','Mandeville P.O', '(876)233-4543'),
('Jane','McKenzie', 'Staton Road','Portmore', 'St. Catherine ','Gregory Park P.O', '(876)495-0965'),
('Wayne','Newby', 'Duhaney Drive','Toll Gate', 'Clarendon','Toll Gate P.O.', '(876)687-5994'),
('Doug','Christie', 'Portland Road','Junction', 'St. Mary','Junction P.O', '(876)950-4954')


--insert into Customers table
insert into Customers (FirstName,LastName, TRN, Phone) values
('Monique', 'Brown', '123-221-431', '(876)283-9473'),
('Rick', 'Samuels', '329-482-432', '(876)948-2351'),                                                                  
('Talia', 'Green', '394-433-532', '(876)212-2519'),
('Thavia', 'Barrett', '958-973-684', '(876)658-9483'),
('Zion', 'Williams', '084-984-839', '(876)689-0325'),
('John', 'Douglas', '830-482-098', '(876)345-1253'),
('Celine', 'Wilson', '594-484-947', '(876)745-6485')


--insert into Make table
insert into Make (Name) values
('Toyota'),
('Honda'),
('Nissan'),
('Subaru'),
('Mazda'),
('BWM')

--insert into Vehicle Types table
insert into Vehicle_Types (Name) values
('Truck'),
('Sedan'),
('Bus'),
('SUV')

--insert into Transaction Types table
insert into Transaction_Types (Transaction_name) values
('Buying'),
('Selling')

--insert into Used Cars table
insert into Used_Cars (VehicleTypeId, MakeId, UsedCarDealerId, Model, ChassisNumber, TransmissionNumber, Mileage, Price)values
(3,1,4,'Hiace','TOY257839','T412845513', '45623km', 1130000.00 ),
(2,4,3,'Impreza','SUB5678932', 'T34568978', '345678km', 2700000.00),
(4,2,5,'CRV','HDA334589', 'T45678909', '87545km', 3500000.00),
(2,6,4,'X5', 'BMW57839','T9284932','567899km', 4500000.00 ),
(4,5,5,'CX-5', 'MAZ03843', 'T9237442','88362km', 2700000.00),
(3,3,4,'NIRVAN', 'NIS92874','T6789043', '43823mil', 2250000.00),
(2,1,1,'Corolla', 'TOY038322','T9837283','892402km', 1560000.00)


--insert into Car Reports table
insert into Car_Reports (UsedCarId,NoOfPreviousOwners, Repairs, AccidentReport) values
(5,8,'Yes','Yes'),
(3,3,'No','No'),
(6,1,'Yes','No'),
(7,2,'No','No'),
(4,1,'No','No'),
(2,5,'No','No'),
(1,6,'Yes','No')

insert into Transactions (UsedCarId, TransactionTypeId, CarReportId, CustomerId) values
(5,2,5,6),
(6,2,6,4),
(7,2,7,3),
(3,1,3,5),
(4,1,4,3),
(2,1,2,1),


