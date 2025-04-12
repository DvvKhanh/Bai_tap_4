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

![image](https://github.com/user-attachments/assets/f271b9e0-556e-4eb5-aa35-112e3c3aead9)

- Thiết lập khóa ngoại cho bảng

![image](https://github.com/user-attachments/assets/45b8a8d2-31c9-44dd-80a6-d83918e0a9d5)

2.4 Bang TKB

![image](https://github.com/user-attachments/assets/e5ec3795-b722-4420-a16e-ee079707dc15)

- Thiết lập khóa ngoại

![image](https://github.com/user-attachments/assets/cd7664a3-804f-45a1-99ce-9f42ac196ef9)

## 3. Tạo Diagram
![image](https://github.com/user-attachments/assets/164e8ce5-570d-41ad-bb7f-74996275c487)







  
