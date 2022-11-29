create proc sp_CNPB 
@oldTENPHG nvarchar(15), 
@TENPHG nvarchar(15), 
@MAPHG int, 
@TRPHG nvarchar(9), 
@NG_NHANCHUC date
as
begin
	UPDATE PHONGBAN 
	SET [TENPHG] = @TENPHG, 
		[MAPHG] = @MAPHG, 
		[TRPHG] = @TRPHG, 
		[NG_NHANCHUC] = @NG_NHANCHUC
	where TENPHG = @oldTENPHG;
end
go
exec sp_CNPB 'CNTT','IT','10','009','1909/01/01'
select * from PHONGBAN