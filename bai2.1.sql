create proc sp_ThongtinNV @MaNV navarchar(10),
as
begin
select*from NHANVIEN where MANV = @MaNV
end
go
exec sp_ThongtinNV'005'
