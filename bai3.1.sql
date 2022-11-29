create proc sp_TPB @TENPHG nvarchar(15), @MAPHG int, @TRPHG nvarchar(9), @NG_NHANCHUC date
as
	if exists(select*from PHONGBAN where MAPHG = @MAPHG)
	update PHONGBAN SET TENPHG = @TENPHG, TRPHG = @TRPHG, NG_NHANCHUC = @NG_NHANCHUC
	where MAPHG = @MAPHG
	else
	insert into PHONGBAN
	values(@TENPHG, @MAPHG, @TRPHG, @NG_NHANCHUC)
	Drop proc sp_TPB
exec sp_TPB 'CNTT',6,'008','1985/01/01'
select * from PHONGBAN
	