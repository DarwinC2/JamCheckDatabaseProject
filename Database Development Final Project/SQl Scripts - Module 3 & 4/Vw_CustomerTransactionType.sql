USE [JamCheckDatabase]
GO 
CREATE VIEW Vw_CustomerTransactionType as

-- Show Customers Transaction Type
select 

	c.FirstName+' '+ c.LastName [Customer Name],
	c.Phone [Phone Number],
	tt.Transaction_name [Type of Transaction],
	t.TransactionTypeId [Transaction Type Id]

from Transactions t
left join  Customers c on c.Id  = t.CustomerId
inner join Transaction_Types tt on tt.Id = t.TransactionTypeId
--GROUP BY c.FirstName, c.LastName, c.Phone, tt.Transaction_name, t.TransactionTypeId