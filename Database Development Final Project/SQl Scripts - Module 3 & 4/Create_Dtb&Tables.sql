 --create Database JamCheckDatabase;



use JamCheckDatabase;


--Tables in Jamcheck Database


-- Create Used CAR Dealer Table

create table UsedCarDealers(
    Id int primary key identity,
    FirstName nvarchar(50) not null,
	LastName nvarchar(50) not null,
    Street nvarchar(50) not null,
    City nvarchar(50) not null,
    State nvarchar(50) not null,
    PostalCode nvarchar(50) not null,
    Phone nvarchar (50)not null
);

--Create Used Vehicle Types 

create table Vehicle_Types(
    Id int primary key identity, 
    Name nvarchar(50) not null
    );

--Create Make Table
create table Make(
    Id int primary key identity,
    Name nvarchar(50) not null
);


--Create Cutsomer Table 
create table Customers(
    Id int primary key identity,
    FirstName nvarchar(50) not null,
    LastName nvarchar(50) not null,
    TRN nvarchar(50) not null,
    Phone nvarchar (50)not null
);

-- Create Transaction Type Table

create table Transaction_Types(
    Id int primary key identity,
    Transaction_name nvarchar(50) not null
)
;
-- Create Used Cars Table
create table Used_Cars(
    Id int primary key identity,
    VehicleTypeId int foreign key references Vehicle_Types(Id),
    MakeId int foreign key references Make(Id),
    UsedCarDealerId int foreign key references UsedCarDealers(Id),
    Model nvarchar(50) not null,
    ChassisNumber nvarchar (50) not null, 
    TransmissionNumber nvarchar (50),
    Mileage nvarchar (50) not null,
    Price float not null,
);

--Create Car Report Table

create table Car_Reports(
    Id int primary key identity,
    UsedCarId int foreign key references UsedCarDealers(Id),
    NoOfPreviousOwners int not null,
    Repairs nvarchar (100),
    AccidentReport nvarchar (100)
);

--create Transactions Table

create table  Transactions(
    Id int primary key identity,
    UsedCarId int foreign key references Used_Cars (Id),
    TransactionTypeId int foreign key references Transaction_Types(Id),
    CarReportId int foreign key references Car_Reports(Id),
    CustomerId int foreign key references Customers (Id)
);

