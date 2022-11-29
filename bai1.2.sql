create proc sp_tinhtg @a int, @b int
as
begin
	declare @tg int;
	set @tg = @a + @b;
	print ' Tổng là: ' + cast(@tg as varchar);
end;

exec sp_tinhtg 5, 6;
