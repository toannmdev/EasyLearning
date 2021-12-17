# Review dự án cổng thanh toán **[Easy2Pay](https://easy2pay.vn/)**

- Context đứng ở vị trí review lại sản phẩm của Team, review sản phẩm team mình làm ra 1 cách công bằng, nhìn nhận những mặt tốt, dở của cả Team để anh em cùng tiến bộ ở các dự án tới.

- Thời gian từ khi đưa ra ý tưởng -> nghiệm thu kết quả: *27/09/2020* -> *22/04/2021*

- Tổng thời gian dự án: chạy hơn *6 tháng*, thời gian thực tế anh em dành cho dự án: *~~1-2h/1 ngày* (man hours còn lại anh em còn bận maintaince, take care các dự án khác)

## Tổng quát

- Đối với những bài toán liên quan tới thay đổi thói quen người dùng cần:

    - Có kịch bản rõ ràng, tính tới các trường hợp truyền thông sau này, tránh hậu quả phải đem con bỏ chợ
    - Những điều mình làm, có thực sự mang lại giá trị cho khách hàng? Khách hàng ở đây là `end-user`, thay vì `customer`
- 2 case study cụ thể: 
    - **[Easy2Pay](https://easy2pay.vn/)**
    - **[VietQr](https://vietqr.net/)**

## Bối cảnh:

- Nhiều đại lý hoá đơn điện tử, công ty, hộ kinh doanh cá thể... phải mất nhiều thời gian cho việc đối soát giao dịch, đơn hàng, thanh toán….
- Các khó khăn có thể kể tới:
    
    - Việc đối soát đơn hàng có thể gây overload cho nhân viên kế toán.
    - Đối với các công ty dùng phương thức chuyển khoản, cách validate thường dùng là theo cú pháp chuyển khoản, dẫn tới việc thiếu tính chính xác, mất nhiều thời gian giữa các phòng ban.
    - Đơn hàng đã được thanh toán, nhưng không biết được khi nào tiền về tài khoản.

- Mong muốn của công ty:
  
    - 1 giải pháp thanh toán với **“chi phí rẻ nhất”**. Doanh thu mỗi tháng hiện tại từ **3.2 tỷ - 4 tỷ**, chi phí từ **1.8-2.2 tỷ/tháng**. Vì vậy, cần cân đối nguồn lực của công ty.
    - Có thể thanh toán liên ngân hàng.
    - Có thể đối soát tự động.
    - Dần dần hình thành cổng thanh toán, giúp mang lại nguồn thu bền vững cho [SoftDreams](https://easyinvoice.vn/): mong ước xa vời :grinning: : thu phí đối với hình thức thanh toán kèm đối soát tự động qua cổng thanh toán [Easy2Pay](https://easy2pay.vn/) khi:
        
        - Đạt **10k** doanh nghiệp sử dụng: **3300/1 đơn hàng**
        - Đạt **10k-20k** doanh nghiệp sử dụng: **2000/1 đơn hàng**
        - Đạt trên **60k** doanh nghiệp sử dụng: **1000đ/1 đơn hàng**
        - Mục tiêu thu phí là phụ, phụ trợ giúp [SoftDreams](https://easyinvoice.vn/) có thêm Khách hàng, củng cố vị thể mới là top 1.

## Giải pháp:

- Hợp tác với Bidv, đưa ra giải pháp thanh toán liên ngân hàng qua tài khoản định danh qua các kênh:
    - Thanh toán tại quầy giao dịch của các ngân hàng.
    - Thanh toán trên Online Banking.
    - Thanh toán qua Smart Banking.

- Phương thức hoạt động:
    - [SoftDreams](https://easyinvoice.vn/) cung cấp cho người dùng 1 mã tài khoản định danh. 
    - Để thanh toán các đơn hàng, thực hiện các giao dịch....khách hàng tiến hành nhập mã định danh (gần giống số tài khoản tại ngân hàng), chọn ngân hàng, số tiền của giao dịch/đơn hàng sẽ được tự động điền (optional).
    - Các thao tác sẽ y như thao tác chuyển tiền thông thường

## Đối tượng người dùng SoftDreams muốn hướng tới:

- Tại [SoftDreams](https://easyinvoice.vn/): giảm thiểu được *2h* OT của nhân viên kế toán mỗi ngày,
- Đối tượng cấp 1: Các đại lý cung cấp hoá đơn điện tử: **1000 doanh nghiệp** sử dụng trong **6 tháng** đầu trên tổng **60k-70k** doanh nghiệp [SoftDreams](https://easyinvoice.vn/) hiện có.
- Đối tượng cấp 2: Công ty, hộ kinh doanh cá thể…. của các đối tượng cấp 1 (Khách hàng của Khách hàng): đưa ra số liệu sau khi triển khai đối tượng 1.

## Lợi ích đem lại:

- Cung cấp giải pháp thanh toán liên ngân hàng tới doanh nghiệp, hộ kinh doanh cá thể với biểu phí giao dịch hiện tại của ngân hàng Khách hàng thanh toán đang sử dụng. Ví dụ Khách hàng chuyển khoản liên ngân hàng mất **0đ**, sử dụng dịch vụ của [SoftDreams](https://easyinvoice.vn/), khách hàng thanh toán mất **0đ**.
- Các đơn hàng được **`đối soát tự động`**: đã thanh toán đủ số tiền, thanh toán 1 phần, hay toàn bộ đơn hàng….trước khi chuyển cho bộ phận Kế toán giúp giảm được nhiều thời gian giữa các khâu đối soát đơn hàng….
- Nhận được thông báo **`realtime`** khi tiền được chuyển vào tài khoản.

## Hạn chế:
- 1 `Mã tài khoản định danh` ứng với 1 giao dịch, có thể gồm 1, hoặc nhiều hóa đơn (đơn hàng). Vì vậy, khách hàng không thể `Lưu danh bạ` cho các lần thanh tiếp tiếp theo (khó quản lý `mã tài khoản định danh`)

=> **Đây là rào cản lớn nhất [Easy2Pay](https://easy2pay.vn/) gặp phải**
## Kết quả:

- Sau khi đưa ra ý tưởng, mọi người đều đánh giá khả thi, và có khả năng phát triển tốt, mang lại nhiều lợi ích cho khách hàng.
- Những lần demo giải pháp đều có bất cứ vấn đề gì.
- Kết quả sau khi chạy thử nghiệm 1 tháng đầu: 
    - Số khách hàng thử nghiệm: **1000 Khách hàng**, giá trị đơn hàng **<= 1tr đồng**
    - Số lượng Khách hàng thanh toán qua cổng thanh toán đạt **1/1000**, tỷ lệ **1/1000**, 1 tỷ lệ quá thấp so với kì vọng **30%** đặt ra ban đầu (*30% là mục tiêu đặt ra cực kì thấp so với các đánh giá ban đầu, đã tính tới các trường hợp Kinh doanh, Khách hàng còn bỡ ngỡ với mã định danh mới*)
- Cách khắc phục hậu quả sau đó:
    - Sử dụng tới biện pháp phòng trừ đã tính tới từ đầu: Sử dụng dịch vụ của [VietQr](https://vietqr.net/): tạo mã QrCode theo chuẩn chung cho toàn bộ ngân hàng tại Việt Nam, giúp việc nhập mã trở nên đơn giản hơn.
    - Nghiên cứu [VietQr](https://vietqr.net/) được tầm 15p, chợt phát hiện ra, giải pháp của VietQr hệt như bài toán ở trên [SoftDreams](https://easyinvoice.vn/) đã gặp:
        - Không thể quét trực tiếp [VietQr](https://vietqr.net/) từ phần QrCode của các app ngân hàng, muốn quét QrCode của [VietQr](https://vietqr.net/) phải vào 1 menu riêng.
        - Mỗi app ngân hàng lại đặt biểu tượng quét [VietQr](https://vietqr.net/) ở 1 vị trí khác nhau, dẫn tới việc rất khó để truyền thông
- Tính tới *16/09*, ngày cuối cùng còn làm việc tại [SoftDreams](https://easyinvoice.vn/), tức là ~~ *4 tháng* kể từ khi đưa ra giải pháp cuối cùng: dự án vẫn đi vào ngõ cụt, và không có bất cứ giải pháp nào để khắc phục, đưa sản phẩm tới tay người dùng….

## Bài học rút ra:

- Bài toán khó nhất là thay đổi hành vi, thói quen người dùng:
    - Người dùng đã quá quen với việc sử dụng số tài khoản của công ty đó để thanh toán, thậm chí lưu vào danh bạ để cho các lần thanh toán sau.
    - Mặc dù đã demo với nhiều công ty, nhà cung cấp, nhưng không ai trong số đó nghĩ tới **`“Mã định danh”`** nếu dùng để định danh cho đơn hàng sẽ gây khó khăn cho người dùng (người thanh toán) trong việc quản lý mã.
- Trước khi đưa ra 1 giải pháp, nên thử đứng ở góc độ người dùng cuối để đánh giá sản phẩm, tự trả lời các câu hỏi:
    - Nếu là người dùng cuối:
        - Việc đối soát tự động đối với họ **là vô nghĩa**.
        - Việc thanh toán với biểu phí y như biểu phí họ đang được áp dụng khi chuyển khoản **là vô nghĩa**.
        - Nhưng:
            - Họ phải copy mã tài khoản định danh từ email thay vì chọn từ danh bạ đã lưu khi thanh toán 1 đơn hàng.
            - Giải pháp đưa ra giúp họ có thể thanh toán nhiều đơn hàng cùng lúc, bằng cách chuyển khoản, nhưng không thể cho phép họ lựa chọn đơn hàng nào cần thanh toán.
        - Vậy nghĩa là Khách hàng không được lợi ích gì, và họ phải thay đổi thói quen, hành vi. Đây là nguyên nhân chính dẫn tới thất bại của Cổng thanh toán [Easy2Pay](https://easy2pay.vn/).
- Nếu đã xác định làm Product, nên đi theo hướng làm Product, thay vì hướng của OutSource:
    - Tập trung vào End User, thay vì Customer.

