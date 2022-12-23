
use [JamCheckDatabase]

--INSERT CAR MAKE RECORD
declare @Id int -- need to be edited
exec [dbo].[spInsert_CarMake] 
'Hyundai', @Id output
select @Id

--USE INPUT PARAMETERS TO FIND CUSTOMER
EXEC [dbo].[spSelect_FindCustomerName] 'T%'

-- SELECT ALL USED CAR DEALERS
EXEC [dbo].[sp_SelectAllDealers]

--UPDATE CAR MAKE RECORD
EXEC [dbo].[spUpdate_CarMake]

-- DELETE TRANSACTION RECORD
EXEC [dbo].[spDele_TransactionRecord]

-- INSERT USED CAR RECORD (OUTPUT PARAMETER)
declare @Id int 
EXEC[dbo].[spOutputPart_InserUsedCarRecord]
3,1,4,'Hiace','TOY337888','T111845513', '23345km', 1170000, @Id output
select @Id


