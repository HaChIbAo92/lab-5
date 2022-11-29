create proc sp_tg2 @n int
as
begin
	declare @sum int, @i int;
	set @sum = 0;
	set @i = 1;
	while @i <= @n
	begin
		if @i % 2 = 0
		begin
			set @sum = @sum + @i;
		end;
		set @i = @i + 1;
	end;
		print N'Tổng các số chẵn: ' + cast(@sum as varchar);
end;
exec sp_tg2 10

