# Bài tập 04 của SV: K225480106099 - Đậu Văn Khánh - Môn Hệ quản trị CSDL
# Yêu cầu bài toán:
 - Tạo csdl cho hệ thống TKB (đã nghe giảng, đã xem cách làm)
 - Nguồn dữ liệu: TMS.tnut.edu.vn
 - Tạo các bảng tuỳ ý (3nf)
 - Tạo được query truy vấn ra thông tin gồm 4 cột: họ tên gv, môn dạy, giờ vào lớp, giờ ra.
   trả lời câu hỏi: trong khoảng thời gian từ datetime1 tới datetime2 thì có những gv nào đang bận giảng dạy.

# Các bước thực hiện:
1. Tạo github repo mới: đặt tên tuỳ ý (có liên quan đến bài tập này)
2. Tạo file readme.md, edit online nó:
   - paste những ảnh chụp màn hình
   - gõ text mô tả cho ảnh đó

# Gợi ý:  
  - sử dung tms => dữ liệu thô => tiền xử lý => dữ liệu như ý (3nf)
  - tạo các bảng với struct phù hợp
  - insert nhiều rows từ excel vào cửa sổ edit dữ liệu 1 table (quan sát thì sẽ làm đc)

# Bài làm
## 1. Tạo Database TKB
![image](https://github.com/user-attachments/assets/2689dfe4-6159-46b2-8196-615cb840dc19)

## 2. Tạo bảng

2.1 Bảng GiaoVien

![image](https://github.com/user-attachments/assets/ad8b2608-b411-4fb4-9628-cbf37f22ead6)

2.2 Bảng MonHoc

![image](https://github.com/user-attachments/assets/f26bb722-d30c-4bf6-a47e-de83b83f7d89)

2.3 Bang LopHocPhan

![image](https://github.com/user-attachments/assets/a440199e-9fa1-4cbc-b447-a7b5de9e42ad)

2.4 Bang TKB

![image](https://github.com/user-attachments/assets/0a066d86-3b38-442b-ac2a-77867d1f60f3)

☘ Thiết lập khóa ngoại:
 - MaGV – khóa ngoại tham chiếu đến bảng GiaoVien: Liên kết cột MaGV của bảng TKB với MaGV của bảng GiaoVien.
 - MaLHP – khóa ngoại tham chiếu đến bảng LopHocPhan: Liên kết cột MaLHP của bảng TKB với MaLHP của bảng LopHocPhan.
 - MaMH – khóa ngoại tham chiếu đến bảng MonHoc: Liên kết MaMH của bảng TKB với MaMH của bảng MonHoc.

![image](https://github.com/user-attachments/assets/cd7664a3-804f-45a1-99ce-9f42ac196ef9)

## 3. Tạo Diagram

![Screenshot 2025-04-13 001016](https://github.com/user-attachments/assets/ce1ed50c-af94-403a-bc60-5ec23545affa)

## 4. Thêm thông tin cho các bảng 
☘ Truy cập vào đường link TMS.tnut.edu.vn để lấy dữ liệu

![image](https://github.com/user-attachments/assets/42033a28-7708-4d9d-bd5b-c7934fe65e05)

☘ Copy các dữ liệu cần thiết và dán vào excel

![image](https://github.com/user-attachments/assets/de956e7a-4a01-4f6f-84e2-7b7f0f9d5203)

### 4.1 Bảng GiaoVien
☘ Sao chép cột GV từ cột B paste sang cột P và thiết lập thêm cột MaGV vì nó chưa có trong excel.
![image](https://github.com/user-attachments/assets/0425da92-0396-4910-bd49-fb94bb4173dc)

☘ Lọc dữ liệu giáo viên:
  Chọn cột P vừa được dán -> Vào tab "Data" trên thanh công cụ (Ribbon) -> Chọn "Remove Duplicates"
   -> Xác nhận hộp thoại hiện ra → Nhấn OK → Kết quả là danh sách tên giáo viên duy nhất.
  
![Screenshot 2025-04-12 221950](https://github.com/user-attachments/assets/7f66c88f-3475-4f39-9d28-6ee1d10f29b6)

☘ Sao chép dữ liệu vừa lọc và paste dữ liệu vào bảng GiaoVien
![image](https://github.com/user-attachments/assets/673d582e-444c-4495-9268-e59e14d804e0)

### 4.2 Bảng MonHoc
☘ Lọc dữ liệu
![image](https://github.com/user-attachments/assets/bc5c09b1-22e6-4f66-914b-d00892087d72)

☘ Sao chép dữ liệu vừa lọc và paste dữ liệu vào bảng MonHoc
![image](https://github.com/user-attachments/assets/053918ae-1a43-48bb-8427-1655bbdd921f)

### 4.3 Bảng LopHocPhan
☘ Lọc dữ liệu
![image](https://github.com/user-attachments/assets/7af6dd07-b02f-4813-a4b5-2247a8d8c4e5)

☘ Sao chép dữ liệu vừa lọc và paste dữ liệu vào bảng LopHocPhan
![image](https://github.com/user-attachments/assets/06f14ca5-6ff2-46d8-b9d7-59a0f8f32351)

### 4.4 Bảng TKB
![image](https://github.com/user-attachments/assets/029e0b56-76ab-4516-869b-79df3573aa01)

## 5. Tạo được query truy vấn ra thông tin gồm 4 cột: họ tên gv, môn dạy, giờ vào lớp, giờ ra.
- Trả lời câu hỏi: trong khoảng thời gian từ datetime1 tới datetime2 thì có những gv nào đang bận giảng dạy.
  
![image](https://github.com/user-attachments/assets/2d758786-9125-4446-a648-7025a85bc2db)

☘ Xuất hiện ra cửa sổ như này
![image](https://github.com/user-attachments/assets/bc7bc298-5316-41a2-8bfc-4d4f6107f892)

☘ Lệnh truy vấn
```sql
-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      Đậu Văn Khánh
-- Create date: 2025-04-13
-- Description:	Truy vấn các giáo viên bận giảng dạy trong khoảng thời gian
-- =============================================
ALTER PROCEDURE TKB_GV 
    @thoiGianBatDau datetime,
    @thoiGianKetThuc datetime
AS
BEGIN
    SET NOCOUNT ON;

    SELECT DISTINCT
        GV.HoTen AS N'Họ tên GV',
        MH.TenMH AS N'Môn dạy',
        TKB.GioVao AS N'Giờ vào',
        TKB.GioRa AS N'Giờ ra'
    FROM TKB 
    JOIN GiaoVien GV ON TKB.MaGV = GV.MaGV
    JOIN MonHoc MH ON TKB.MaMH = MH.MaMH
    WHERE
        TKB.NgayHoc = CAST(@thoiGianBatDau AS DATE)
        AND (
            -- Khoảng thời gian kiểm tra giao với thời gian giảng dạy
            TKB.GioVao < CAST(@thoiGianKetThuc AS TIME)
            AND TKB.GioRa > CAST(@thoiGianBatDau AS TIME)
        )
END
GO
-- Lấy danh sách giảng viên bận từ 8:00 đến 12:00 ngày 2025-03-20
EXEC TKB_GV '2025-03-20 8:00', '2025-03-20 12:00';
```

☘ Kết quả
![image](https://github.com/user-attachments/assets/e5888b81-6d10-46b0-9299-0eb8610faef5)















  
