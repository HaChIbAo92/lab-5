alter proc sp_TimNVTheoTP 
@TrPHG nvarchar(9)
as
begin
	select b.* from PHONGBAN a inner join NHANVIEN b on a.MAPHG = b. PHG
		where a.TRPHG = @TrPHG and
			not exists(select * from THANNHAN where MANV = b.MANV)
end;
exec sp_TimNVTheoTP '005'
select * from PHONGBAN;
select * from THANNHAN;
