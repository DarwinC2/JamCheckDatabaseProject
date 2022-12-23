use [JamCheckDatabase]

insert into UsedCarDealers (FirstName,LastName, Street, City, State, PostalCode, Phone)values
('N/A','N/A', 'N/A','N/A', 'N/A','N/A', 'N/A')

Declare @id int
exec [dbo].[spOutputPart_InserUsedCarRecord]
2,4,null,'Forrester','SUB9999932', 'R34568978', '345678km', 1700000.00, @Id Output
