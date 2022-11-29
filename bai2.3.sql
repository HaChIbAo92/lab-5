create proc sp_Thongkedean @MADA int, @Diem_DA nvarchar(15)
as 
begin
select count (b.ma_nvien) as 'số lượng'
from DEAN a inner join PHANCONG b on a.MADA = b.MADA
where a.MADA = @MADA and a.DDIEM_DA = @Diem_DA;
end
go
exec sp_Thongkedean 1, N'Vũng TÀu'
