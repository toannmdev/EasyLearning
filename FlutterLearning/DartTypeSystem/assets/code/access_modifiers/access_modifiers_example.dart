import 'test.dart';

void main(List<String> args) {
  /// để khai báo biến private, sử dụng underscrore `_`
  /// _a có thể truy cập từ hàm main
  InMainClass inMainClass = InMainClass();
  inMainClass._a; // _a là biến private trong class A, nhưng nằm cùng file với 


  /// ở 1 trường hợp khác, _a không thể truy cập, vì nằm ở file khác, chú ý phần import 'test.dart';
  Test test = Test();
  test._a; // ở 1 trường hợp khác, _a không thể truy cập, vì nằm ở file khác, chú ý phần import 'test.dart';


  /// khi sử dụng inline function, cần chú ý tới access modifiers
  /// không thể truy cập các biến nằm trong inline function
  void function(){
    String inFunction = inMainClass._a; // có thể truy cập
  }

  String outFunction = inFunction; // không thể truy cập
}

class InMainClass {
  String _a = "";
}