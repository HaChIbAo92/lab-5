create proc hello @Ten nvarchar(30)
as
begin
	print 'Hello' + @Ten;
end
go
exec hello N'Hùng'