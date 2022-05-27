# Dart basic

## Nội dung chính:
1. [Dart Variables](#dart-variables)
- Các kiểu dữ liệu trong dart:
  - [String](#string)
  - [int](#int)
  - [double](#double)
  - [bool](#bool)
  - [array](#array)
  - [map](#map)
- [dynamic vs var](#dynamic-vs-var)
- [Function, enum](#function-enum)
- [Lưu ý](#lưu-ý)
2. [Null safety](#null-safety)
- [Why Null safety?](#why-null-safety)
- [Null safety là gì?](#null-safety-là-gì)
3. Access modifier
4. For loop
5. Practise

## Dart Variables
### String
1. Khái niệm:

Kiểu String trong Dart sử dụng để biểu diễn chuỗi ký tự Unicode(UTF-16) (bạn có thể sử dụng các xâu có kí tự tiếng Việt hoặc bất cứ thứ tiếng nào mà sử dụng được với mã Unicode.

Nhìn chung string trong dart giống các ngôn ngữ khác.

Cách khai báo và sử dụng:

```dart
void main(List<String> args) {
  /// Có thể sử dụng nháy đơn '' hoặc nháy kép "" để khai báo 1 string
  String s = 'Hello worl';
  String s1 = "Hello world";
}
```

\
&nbsp;

### int
int là kiểu số nguyên. Tùy thuộc vào bộ nhớ máy, nền tảng máy (32 bit hay 64 bit) mà kiểu số nguyên trong Dart có giá trị từ -2^63 đến 2^63 - 1. Ngoài kiểu số nguyên int, trong Dart còn có kiểu số nguyên BigInt để làm việc với các số nguyên lớn.

BigInt khá giống với BigInteger trong java, phù hợp để lưu trữ các số nguyên lớn, như số tiền lạm phát ở Venezuela

```dart
void main(List<String> args) {
  int a = 10;
  int b = -10;

  print("a = $a"); // a = 10
  print("b = $b"); // b = -10
}
```

\
&nbsp;

### double
1. Khái niệm:

double là kiểu số thực. Các phiên bản cũ của Dart thì kiểu số thực bắt buộc phải có dấu . ví dụ để khai báo biến số thực a có giá trị 10 chúng ta phải viết rõ double a = 10.0 Tuy nhiên các phiên bản hiện nay đã bỏ phần dấu . này đi, bạn có thể khai báo double a = 10

Trong dart sẽ không có Float như java.

```dart
void main(List<String> args) {
  double a = 10;
  double b = -10.0;

  int c = 10;
  int d = -10;

  int _resultInt = (a + b + c + d).toInt();
  double _resultDouble = (a + b + c + d);

  print("_resultInt -> $_resultInt"); // _resultInt -> 0
  print("_resultDouble -> $_resultDouble"); // _resultInt -> 0.0
}
```
2. Tổng kết:

> :warning: **1 vài phương thức cần nhớ**: để chuyển đổi giữa các kiểu dữ liệu
- toInt()
- toString()
- toDouble()
- parseInt(), int.tryParse()
- parseDouble(), double.tryParse()

Chuyển đổi từ int, double sang string:
```dart
void main(List<String> args) {
  int a = 10;
  double b = -10.0;

  String _aStr = a.toString();
  String _bStr = b.toString();

  print("int a toString: $_aStr"); // int a toString: 10

  print("double b toString: $_bStr"); // double b toString: -10.0
}
```

Chuyển từ int qua double:
```dart
void main(List<String> args) {
  int a = 10;
  double _aDouble = a.toDouble();
}
```

Chuyển từ double qua int:
```dart
void main(List<String> args) {
  double b = -10.0;
  int _bInt = b.toInt();

  print("int b toDouble: $_bInt"); // int b toDouble: -10
}
```

Chuyển từ String qua double, int:
```dart
void main(List<String> args) {
  String c = "20";

  int _cInt = int.parse(c);
  double _cDouble = double.parse(c);

  print("Parse String c to int: $_cInt"); // Parse String c to int: 20
  print("Parse String c to double: $_cDouble"); // Parse String c to double: 20.0
}
```

\
&nbsp;

### bool
Kiểu dữ liệu bool trong Dart có 2 giá trị là true (đúng) và false (sai) được sử dụng để thể hiện kết quả của một mệnh đề logic (các phép toán so sánh, kiểm tra, các hàm…)

```dart
void main(List<String> args) {
  bool a = true;
  bool b = false;

  if (a) { /// các viết tắt khi so sánh bool == true
    print("a is $a"); // a is true
  }

  if (a == true) { /// viết kiểu này rõ nghĩa hơn
    print("a == true"); // a == true
  }

  if (!b) { /// cách viết tắt khi so sánh bool == false
    print("b is $b"); // b is false
  }

  if (a && !b) { /// so sánh nhiều mệnh đề, viết tắt
    print("a == true and b == false"); // a == true and b == false
  }

  if (a || b) { /// so sánh nhiều mệnh đề, viết tắt
    print("a == true or b == true"); // a == true and b == false
  }
}
```

\
&nbsp;

### array
1. Khái niệm:

Kiểu dữ liệu array (danh sách - List) trong Dart được sử dụng để biểu diễn cho một tập hợp các đối tượng theo một thứ tự nhất định. Kiểu array trong Dart tương đương với kiểu mảng Array trong các ngôn ngữ khác (java, kotlin).

Cách khai báo
```dart
void main(List<String> args) {
  List strs = ["a", "b", "c"]; /// cách viết tắt
  List<String> strs_1 = <String>["a", "b", "c"
  ]; /// cách viết tắt rõ nghĩa, sử dụng [generic]
}
```

> :warning: **1 vài phương thức cần nhớ** khi làm việc với array
- add()
- addAll()
- remove()
- subList()

Thêm mới / xoá 1 phần tử vào array
```dart
void main(List<String> args) {
  List strs = ["a", "b", "c"]; /// cách viết tắt
  List<String> strs_1 = <String>["a", "b","c"
  ]; /// cách viết tắt rõ nghĩa, sử dụng [generic]

  strs.add("d");
  print("strs after adding \"d\" -> $strs");
  // strs after adding "d" -> [a, b, c, d]

  strs.remove("d");
  print("strs after removing \"d\" -> " + strs.toString()); 
  // strs_1 after adding "d" -> [a, b, c, d]

  /// đoạn code trên, nhưng sử dụng [Builder Design Pattern] để viết code ngắn gọn hơn
  print("strs after adding \"d\" then remove \"d\" -> ${strs..add("d")..remove("d")}"); 
  // strs after adding "d" then remove "d" -> [a, b, c]
}
```

Thêm 1 array khác:
```dart
void main(List<String> args) {
  List strs = ["a", "b", "c"]; /// cách viết tắt
  List<String> strs_1 = <String>["a", "b","c"
  ]; /// cách viết tắt rõ nghĩa, sử dụng [generic]


  List<String> strs_2 = ["d", "e", "f"];
  strs_1.addAll(strs_2);
  print("strs_1 after addAll str_2 -> $strs_1");
  // strs_1 after addAll str_2 -> [a, b, c, d, e, f]
}
```

Tách các phần tử thành 1 array từ 1 array:
```dart
void main(List<String> args) {
  List strs = ["a", "b", "c"]; /// cách viết tắt
  List<String> strs_1 = <String>["a", "b","c"
  ]; /// cách viết tắt rõ nghĩa, sử dụng [generic]
  
  
  List<String> strs_1_subList = strs_1.sublist(2, 4);
  print("strs_1_subList -> $strs_1_subList");
  // strs_1_subList -> [c, d]
}
```

Lấy 1 phần tử từ 1 array:
```dart
void main(List<String> args) {
  List strs = ["a", "b", "c"]; /// cách viết tắt
  List<String> strs_1 = <String>["a", "b","c"
  ]; /// cách viết tắt rõ nghĩa, sử dụng [generic]
  

  /// lấy 1 phần tử tại 1 vị trí index trong array
  String _strByIndex = strs_1_subList[0];
  print("_strByIndex -> $_strByIndex");
  // _strByIndex -> c
}
```

2. Tổng kết

Dart cũng giống các ngôn ngữ lập trình khác như java, kotlin...đều hỗ trợ các phương thức nâng cao cho array như:
- map, reduce, every, skip, take
- where, firstWhere, indexWhere
- fillRange, insert, insertAll

> :warning: **1 vài phương thức cần nhớ** khi làm việc với array
- add()
- addAll()
- remove()
- subList()

\
&nbsp;

### map
1. Khái niệm

Kiểu dữ liệu map trong dart là một đối tượng lưu trữ dữ liệu dưới dạng một cặp khóa-giá trị. Mỗi giá trị được liên kết với khóa của nó và nó được sử dụng để truy cập giá trị tương ứng của nó. Cả khóa và giá trị đều có thể là bất kỳ loại nào

Khai báo 1 map
```dart
void main(List<String> args) {
  /// cách viết ngắn gọn
  Map map = {"key": "value"};
  print("map -> $map");
  // map -> {key: value}
  
  // cách viết rõ nghĩa
  Map<String, String> map1 = Map<String, String>();
  map1["key"] = "value";
  print("map1 -> $map1");
  // map1 -> {key: value}
}
```

Trong dart cũng có hỗ trợ HashMap như các ngôn ngữ lập trình khác: java, kotlin

1 vài phương thức cơ bản:

```dart
void main(List<String> args) {
  /// cách viết ngắn gọn
  Map map = {"key": "value"};
  print("map -> $map");
  // map -> {key: value}
  
  // cách viết rõ nghĩa
  Map<String, String> map1 = Map<String, String>();
  map1["key"] = "value";
  print("map1 -> $map1");
  // map1 -> {key: value}

  /// 1 vài phương thức cơ bản
  Map<String, String> map2 = Map.from(map);
  print("map2 -> $map2");
  // map2 -> {key: value}

  String key = map1.keys.first;
  print("key from map1 -> $key");
  // key from map1 -> key

  String value = map1.values.first;
  print("value from map1 -> $value");
  // value from map1 -> value

  /// trong map key là duy nhất
  /// không thể có 2 key cùng giá trị
  Map map12 = map1..addAll(map2);
  print("map12 -> $map12");
  // map12 -> {key: value}
}
```

Map lưu trữ theo key-value. Vậy có thể thêm 1 cặp key-value trùng với cặp key-value đã tồn tại trong map không?
```dart
void main(List<String> args) {
  /// điều gì sẽ xảy ra nếu add 1 map với key mới?
  Map mapWithNewValue = {"key": "value"}..addAll({"key": "newValue"});
  print("mapWithNewValue -> $mapWithNewValue");
  // mapWithNewValue -> {key: newValue}
}
```

> :warning: **Cần chú ý**:
- Map lưu trữ dữ liệu theo key-value
- Key trong map không thể trùng. Nếu thêm 1 map khác có cùng key, value sẽ được cập nhật lại.

2. Tổng kết:
- Map lưu trữ dữ liệu theo key-value
- Key trong map không thể trùng. Nếu thêm 1 map khác có cùng key, value sẽ được cập nhật lại.

\
&nbsp;

## dynamic vs var
1. Khái niệm

Trong Dart mọi thứ đều là object. Đã là object thì luôn phải là instance của một class nào đó. Vì tất cả là đều là object nên dù là số, chữ hay bất kể loại dữ liệu nào thì giá trị mặc định của nó đều là `null`. Nhờ vậy, mọi biến số trong Dart đều là `reference type`. Cũng chính vì thế mà Dart có một loại biến dynamic chấp nhận mọi kiểu dữ liệu.

Dùng var để khai báo các kiểu dữ liệu:
```dart
void main(List<String> args) {
  /// Khai báo biến var
  /// Ưu điểm: nhanh, và không cần quan tâm tới [runtimeType]
  var intVar = 10;
  print("intVar -> $intVar, loại dữ liệu (variableType) -> ${intVar.runtimeType}");
  // intVar -> 10, loại dữ liệu (variableType) -> int

  var doubleVar = 10.0;
  print("doubleVar -> $doubleVar, loại dữ liệu (variableType) -> ${doubleVar.runtimeType}");
  // doubleVar -> 10.0, loại dữ liệu (variableType) -> double

  var stringVar = "A";
  print("stringVar -> $stringVar, loại dữ liệu (variableType) -> ${stringVar.runtimeType}");
  // stringVar -> A, loại dữ liệu (variableType) -> String

  var boolVar = 10;
  print("boolVar -> $boolVar, loại dữ liệu (variableType) -> ${boolVar.runtimeType}");
  // boolVar -> 10, loại dữ liệu (variableType) -> int

  var arrayVar = [1, 2, 3];
  print("arrayVar -> $arrayVar, loại dữ liệu (variableType) -> ${arrayVar.runtimeType}");
  // arrayVar -> [1, 2, 3], loại dữ liệu (variableType) -> List<int>

  var mapVar = {"key": "value"};
  print("mapVar -> $mapVar, loại dữ liệu (variableType) -> ${mapVar.runtimeType}");
  // mapVar -> {key: value}, loại dữ liệu (variableType) -> _InternalLinkedHashMap<String, String>
}
```

Dùng dynamic để khai báo các kiểu dữ liệu
```dart
void main(List<String> args) {
  /// Khai báo biến dynamic
  /// Giống var, nhưng có thể thay đổi variable type
  dynamic dynamicA = 10;
  print("dynamicA -> $dynamicA, loại dữ liệu (variableType) -> ${dynamicA.runtimeType}");
  // dynamicA -> 10, loại dữ liệu (variableType) -> int

  dynamicA = 10.0;
  print("dynamicA -> $dynamicA, loại dữ liệu (variableType) -> ${dynamicA.runtimeType}");
  // dynamicA -> 10.0, loại dữ liệu (variableType) -> double

  dynamicA = "A";
  print("dynamicA -> $dynamicA, loại dữ liệu (variableType) -> ${dynamicA.runtimeType}");
  // dynamicA -> A, loại dữ liệu (variableType) -> String

  dynamicA = true;
  print("dynamicA -> $dynamicA, loại dữ liệu (variableType) -> ${dynamicA.runtimeType}");
  // dynamicA -> true, loại dữ liệu (variableType) -> bool

  dynamicA = [1, 2, 3];
  print("dynamicA -> $dynamicA, loại dữ liệu (variableType) -> ${dynamicA.runtimeType}");
  // dynamicA -> [1, 2, 3], loại dữ liệu (variableType) -> List<int>

  dynamicA = {"key": "value"};
  print("dynamicA -> $dynamicA, loại dữ liệu (variableType) -> ${dynamicA.runtimeType}");
  // dynamicA -> {key: value}, loại dữ liệu (variableType) -> _InternalLinkedHashMap<String, String>

  /// error khi chạy, vì dynamicA hiện tại là Map, không có phương thức toInt()
  var a = dynamicA.toInt();
  print("a -> $a");
  // Class '_InternalLinkedHashMap<String, String>' has no instance method 'toInt'

  /*
   - dynamic đúng với cái tên của nó, có thể sử dụng linh hoạt trong rất nhiều trường hợp
   - Nhưng đây vừa là ưu điểm, vừa là nhược điểm:
      - Trong ví dụ trên, nếu không check [runtimeType] thì khó mà biết được variable type của dynamic,
      điều này dễ dẫn tới việc sử dụng sai phương thức
  */
}
```

Dart cũng như các ngôn ngữ lập trình khác đều hỗ trợ các keyword như:
- const
- final
- late
- static

```dart
void main(List<String> args) {
  const a = 10;
  final b = "b";
  late String c;

  a = 20; // vì a là const, nên không thể thay đổi giá trị

  void initB(){
    b = 10; // vì b là final, nên không thể thay đổi giá trị
  }

  initB();

  void initC(){
    c = "c";
  }

  initC();
}

class A {
  static bool d = false;
}
```

2. Tổng kết
- Nên hạn chế sử dụng dynamic
- Trong dart cũng hỗ trợ static, final, late, const

\
&nbsp;

## Function, enum
1. Khái niệm

Hàm là một khối lệnh thực hiện một tác vụ, khối lệnh này được dùng nhiều lần nên gom chúng tại thành một hàm. Trong Dart mọi thứ đều là đối tượng nên hàm cũng là một đối tượng (kế thừa Function).

```dart
  /// viết và gọi function (hàm)
  /// cách gọi hàm phổ biến
  test("cách gọi hàm phổ biến"); // Đây là hàm test, params test: cách gọi hàm phổ biến
```

Cách viết khác:
```dart
  /// vì trong dart, mọi thứ đều là đối tượng,
  /// và hàm kế thừa Function, nên có thể viết như này
  test.call("gọi qua method call()"); // Đây là hàm test, params test: gọi qua method call()
```

Function cũng có thể truyền vào như 1 params:
```dart
  void main(List<String> args) {
  /// hoặc có thể truyền vào như 1 parameter....
  functionTest(() => test("function call function"));
  // Đây là hàm test, params test: function call function


  var _ret = functionTestCallBack(parseStringFromInt);
  print("Kết quả khi gọi functionTestCallBack -> $_ret");
  // Kết quả khi gọi functionTestCallBack -> Kết quả thực thi function: -1


  var _ret1 = functionTestCallBack((intStr) => parseStringFromInt("10"));
  print("Kết quả khi gọi functionTestCallBack -> $_ret1");
  // Kết quả khi gọi functionTestCallBack -> Kết quả thực thi function: 10
}

void test(String test){
  print("Đây là hàm test, params test: $test");
}

int parseStringFromInt(String number){
  return int.tryParse(number) ?? -1;
}

void functionTest(Function function){
  function.call();
}

/// [functionTestCallBack] sẽ thực thi như sau:
/// - Yêu cầu truyền vào 1 function với parameter là 1 string
/// - Thực thi function [callback] và trả về dữ liệu kiểu int
/// - Trả về kiểu dữ liệu sau khi thực thi function [functionTestCallBack] dạng String
String functionTestCallBack(int Function(String) callback){
  int result = callback.call("");

  return "Kết quả thực thi function: $result";
}
```

Params trong function
``` dart
void main(List<String> args) {
  /// function trong dart hỗ trợ optional params,
  /// - nếu không truyền params vào function: params sẽ nhận giá trị mặc định
  /// - nếu truyền params vào function: params sẽ nhận giá trị được truyền vào từ function
  functionWithOptionalParam();
  // params a=a, b=b
  
  functionWithOptionalParam(
    b: "không phải giá trị b",
    a: "không phải giá trị a"
  );
  // params a=không phải giá trị a, b=không phải giá trị b

  functionWithPositionedParam("a", "b", "c");
  // params a=a, b=b, b=c, d=
}

void functionWithOptionalParam({String a = "a", String b = "b"}){
  print("params a=$a, b=$b");
}
void functionWithPositionedParam(String a, [String b = "", c = "", d = ""]){
  print("params a=$a, b=$b, b=$c, d=$d");
}
```

Inline function: function trong function
```dart
/// Inline function (function lồng function trong dart)
  /// [_inlineFunction2] được định nghĩa bên trong function [_inlineFunction1]
  /// Lúc này chỉ có thể call function [_inlineFunction2] trong function [_inlineFunction2]
  void _inlineFunction1(){
    print("_inlineFunction1");

    void _inlineFunction2(){
      print("_inlineFunction2");
    }

    _inlineFunction2();
  }
  _inlineFunction1();
  // _inlineFunction1
  // _inlineFunction2
```

Mở rộng function từ 1 class
```dart
void main(List<String> args) {
  /// Dart có hỗ trợ extension như kotlin, swift...:
  /// function [test] được viết thêm vào lớp String
  String a = "a";
  a.test();
  // Mở rộng function trên lớp String
}

extension stringExt on String{
  void test(){
    print("Mở rộng function trên lớp String");
  }
}
```


2. Tổng kết

- Function cũng là 1 object trong dart.
- Khi tạo inline function, cần chú ý tới việc đặt tên hàm và nên tuân thủ clean code (1 function không dài quá 20 line, 1 line không nên quá 80 kí tự)
- Function với optional params linh hoạt trong hầu hết các trường hợp.
- Function với positioned params sẽ khó mở rộng trong tương lai.
Ví dụ 1 function với positioned params, sẽ không khả thi khi cần truyền thêm params khác variable type.



## Null safety

### Why Null safety?

### Null safety là gì?