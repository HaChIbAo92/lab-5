create proc sp_KTNVTP @MANV nvarchar(9), @MAPHG int
as
begin
	declare @DEM int;
	select @DEM = count(manv) from NHANVIEN where MANV = @MANV and PHG = @MAPHG;
	return @DEM;
end
go
declare @result int;
exec @result = sp_KTNVTP '001', 4;
select @result