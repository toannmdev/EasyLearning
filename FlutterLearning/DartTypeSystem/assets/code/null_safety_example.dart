void main(List<String> args) {
  /// khi áp dụng `Null safety`, không thể khai báo string s = null
  /// theo cách thông thường;
  String s = null; // sẽ báo lỗi, vì String ở đây không thể nhận giá trị null
  String? sCanBeNull = null;
  print("sCanBeNull -> $sCanBeNull"); // sẽ in ra sCanBeNull -> null



  String? sCanBeNull = null;
  List<String> splitteds = sCanBeNull.split("");
  /// với biến có thể null khi thực thi 1 hàm, sẽ báo lỗi để tránh `Null Pointer Exception`
  /// The method 'split' can't be unconditionally invoked because the receiver can be 'null'.
  
  /// Chúng ta buộc phải kiểm tra `sCanBeNull` != null,
  List<String> splitteds_1 = sCanBeNull?.split("") ?? []; 
  /// ?? là Null-aware, sẽ giải thích ở phía dưới

  /// Hoặc có 1 cách nữa là chắc chắn rằng giá trị hiện tại của `sCanBeNull` không phải null
  List<String> splitteds_2 = sCanBeNull!.split(""); 



  List<String> splitteds_3 = sCanBeNull?.split("") ?? []; 
  /// ở đây, sẽ thực thi như sau:
  /// Nếu `sCanBeNull` != null sẽ gọi hàm split("") và trả về giá trị
  /// Nếu `sCanBeNull` == null sẽ trả về giá trị []
  
  /// 1 vài ví dụ về `Null-aware`
  sCanBeNull ??= "Value"; // nếu sCanBeNull = null, sCanBeNull = "Value"
  sCanBeNull ??= "Test"; // sCanBeNull sẽ không được cập nhật, vì giá trị hiện tại = "Value"
  print("sCanBeNull -> $sCanBeNull");
}