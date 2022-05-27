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
2. Null safety
- Why Null safety?
- Null safety là gì?
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

```dart
void main(List<String> args) {
  int a = 10;
  double b = -10.0;
  String c = "20";

  String _aStr = a.toString();
  double _aDouble = a.toDouble();

  String _bStr = b.toString();
  int _bInt = b.toInt();

  int _cInt = int.parse(c);
  double _cDouble = double.parse(c);

  print("int a toString: $_aStr"); // int a toString: 10
  print("int a toDouble: $_aDouble"); // int a toDouble: 10.0

  print("double b toString: $_bStr"); // double b toString: -10.0
  print("int b toDouble: $_bInt"); // int b toDouble: -10

  print("Parse String c to int: $_cInt"); // Parse String c to int: 20
  print("Parse String c to double: $_cDouble"); // Parse String c to double: 20.0
}
```

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

  if (a|| b) { /// so sánh nhiều mệnh đề, viết tắt
    print("a == true or b == true"); // a == true and b == false
  }
}
```

### array
1. Khái niệm:

Kiểu dữ liệu array (danh sách - List) trong Dart được sử dụng để biểu diễn cho một tập hợp các đối tượng theo một thứ tự nhất định. Kiểu array trong Dart tương đương với kiểu mảng Array trong các ngôn ngữ khác (java, kotlin).

> :warning: **1 vài phương thức cần nhớ** khi làm việc với array
- add()
- addAll()
- remove()
- subList()

```dart
void main(List<String> args) {
  List strs = ["a", "b", "c"]; /// cách viết tắt
  List<String> strs_1 = <String>[
    "a",
    "b",
    "c"
  ]; /// cách viết tắt rõ nghĩa, sử dụng [generic]

  /*
   1 vài phương thức cơ bản cần ghi nhớ:
  */
  strs.add("d");
  print("strs after adding \"d\" -> $strs");
  // strs after adding "d" -> [a, b, c, d]

  strs.remove("d");
  print("strs after removing \"d\" -> " + strs.toString()); 
  // strs_1 after adding "d" -> [a, b, c, d]

  /// đoạn code trên, nhưng sử dụng [Builder Design Pattern] để viết code ngắn gọn hơn
  print("strs after adding \"d\" then remove \"d\" -> ${strs..add("d")..remove("d")}"); 
  // strs after adding "d" then remove "d" -> [a, b, c]

  List<String> strs_2 = ["d", "e", "f"];
  strs_1.addAll(strs_2);
  print("strs_1 after addAll str_2 -> $strs_1");
  // strs_1 after addAll str_2 -> [a, b, c, d, e, f]
  
  List<String> strs_1_subList = strs_1.sublist(2, 4);
  print("strs_1_subList -> $strs_1_subList");
  // strs_1_subList -> [c, d]

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

### map
1. Khái niệm

Kiểu dữ liệu map trong dart là một đối tượng lưu trữ dữ liệu dưới dạng một cặp khóa-giá trị. Mỗi giá trị được liên kết với khóa của nó và nó được sử dụng để truy cập giá trị tương ứng của nó. Cả khóa và giá trị đều có thể là bất kỳ loại nào

Trong dart cũng có hỗ trợ HashMap như các ngôn ngữ lập trình khác: java, kotlin

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


## dynamic vs var
1. Khái niệm

Trong Dart mọi thứ đều là object. Đã là object thì luôn phải là instance của một class nào đó. Vì tất cả là đều là object nên dù là số, chữ hay bất kể loại dữ liệu nào thì giá trị mặc định của nó đều là `null`. Nhờ vậy, mọi biến số trong Dart đều là `reference type`. Cũng chính vì thế mà Dart có một loại biến dynamic chấp nhận mọi kiểu dữ liệu.

Dart cũng như các ngôn ngữ lập trình khác đều hỗ trợ các keyword như:
- const
- final
- late
- static

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
2. Tổng kết
- Nên hạn chế sử dụng dynamic
- Trong dart cũng hỗ trợ static, final, late, const
## Function, enum
