// void main(List<String> args) {
//   /// viết và gọi function (hàm)
//   /// cách gọi hàm phổ biến
//   test("cách gọi hàm phổ biến");
//   // sẽ in ra: Đây là hàm test, params test: cách gọi hàm phổ biến

//   /// vì trong dart, mọi thứ đều là đối tượng,
//   /// và hàm kế thừa Function, nên có thể viết như này
//   test.call("gọi qua method call()");
//   // sẽ in ra: Đây là hàm test, params test: gọi qua method call()

//   /// hoặc có thể truyền vào như 1 parameter....
//   functionTest(() => test("function call function"));
//   // sẽ in ra: Đây là hàm test, params test: function call function

//   var _ret = functionTestCallBack(parseStringFromInt);
//   print("Kết quả khi gọi functionTestCallBack -> $_ret");
//   // sẽ in ra: Kết quả khi gọi functionTestCallBack -> Kết quả thực thi function: -1

//   var _ret1 = functionTestCallBack((intStr) => parseStringFromInt("10"));
//   print("Kết quả khi gọi functionTestCallBack -> $_ret1");
//   // sẽ in ra: Kết quả khi gọi functionTestCallBack -> Kết quả thực thi function: 10

//   /// Inline function (function lồng function trong dart)
//   /// [_inlineFunction2] được định nghĩa bên trong function [_inlineFunction1]
//   /// Lúc này chỉ có thể call function [_inlineFunction2] trong function [_inlineFunction2]
//   void _inlineFunction1(){
//     print("_inlineFunction1");

//     void _inlineFunction2(){
//       print("_inlineFunction2");
//     }

//     _inlineFunction2();
//   }
//   _inlineFunction1();
//   // sẽ in ra: _inlineFunction1
//   // sẽ in ra: _inlineFunction2

//   /// function trong dart hỗ trợ optional params,
//   /// - nếu không truyền params vào function: params sẽ nhận giá trị mặc định
//   /// - nếu truyền params vào function: params sẽ nhận giá trị được truyền vào từ function
//   functionWithOptionalParam();
//   // sẽ in ra: params a=a, b=b

//   functionWithOptionalParam(
//     b: "không phải giá trị b",
//     a: "không phải giá trị a"
//   );
//   // sẽ in ra: params a=không phải giá trị a, b=không phải giá trị b

//   functionWithPositionalParam("a", "b", "c");
//   // sẽ in ra: params a=a, b=b, b=c, d=
//   /// vì không truyền vào d, nên d=""

//   /// Dart có hỗ trợ extension như kotlin, swift...:
//   /// function [test] được viết thêm vào lớp String
//   String a = "a";
//   a.test();
//   // sẽ gọi function test() và in ra: Mở rộng function trên lớp String
// }

// void test(String test){
//   print("Đây là hàm test, params test: $test");
// }

// int parseStringFromInt(String number){
//   return int.tryParse(number) ?? -1;
// }

// void functionTest(Function function){
//   function.call();
// }

// /// [functionTestCallBack] sẽ thực thi như sau:
// /// - Yêu cầu truyền vào 1 function với parameter là 1 string
// /// - Thực thi function [callback] và trả về dữ liệu kiểu int
// /// - Trả về kiểu dữ liệu sau khi thực thi function [functionTestCallBack] dạng String
// String functionTestCallBack(int Function(String) callback){
//   int result = callback.call(""); // "" là default value

//   return "Kết quả thực thi function: $result";
// }

// void functionWithOptionalParam({String a = "a", String b = "b"}){
//   print("params a=$a, b=$b");
// }
// void functionWithPositionalParam(String a, [String b = "", c = "", d = ""]){
//   print("params a=$a, b=$b, b=$c, d=$d");
// }

// extension stringExt on String{
//   void test(){
//     print("Mở rộng function trên lớp String");
//   }
// }



// void main() {
//   int value = 0;
//   void test(int value){
//     value = 10; // chỉ thay đổi biến value, trong scope function test
//     print("trong function test value -> $value");
//   }
//   test(value);
//   print("ngoài fuction test value -> $value"); // kết quả value = 0
// }

void main(List<String> args) {
  var data = DataKeeper(10);
  print("data ban đầu: ${data.value}"); // sẽ in ra: data ban đầu: 10
  increase(data);
  print("data sau khi increase: ${data.value}"); // sẽ in ra: data sau khi increase: 20
}

class DataKeeper {
  int value;
  DataKeeper(this.value);
}

void increase(DataKeeper data) {
  data.value = 20;
}