create proc sp_TongNVthamgiaDA @MADA int
as
begin
	select COUNT(ma_nvien) as 'Số lượng' from PHANCONG where MADA = @MADA
end
go 
exec sp_TongNVthamgiaDA 2