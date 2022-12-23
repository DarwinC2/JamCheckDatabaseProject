use [JamCheckDatabase];


select 
	t.name as [Table Name],
	c.name as [Column Name],
	ty.name as [Data Type],
	c.max_length as [Size],
	c.is_nullable as [Is Nullable]

from sys.tables t
inner join sys.columns c on t.object_id = c.object_id
inner join sys.types ty on ty.user_type_id = c.user_type_id