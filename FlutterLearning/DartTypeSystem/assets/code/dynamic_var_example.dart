// void main(List<String> args) {
//   /// Khai báo biến var
//   /// Ưu điểm: nhanh, và không cần quan tâm tới [runtimeType]
//   var intVar = 10;
//   print("intVar -> $intVar, loại dữ liệu (variableType) -> ${intVar.runtimeType}");
//   // sẽ in ra: intVar -> 10, loại dữ liệu (variableType) -> int

//   var doubleVar = 10.0;
//   print("doubleVar -> $doubleVar, loại dữ liệu (variableType) -> ${doubleVar.runtimeType}");
//   // sẽ in ra: doubleVar -> 10.0, loại dữ liệu (variableType) -> double

//   var stringVar = "A";
//   print("stringVar -> $stringVar, loại dữ liệu (variableType) -> ${stringVar.runtimeType}");
//   // sẽ in ra: stringVar -> A, loại dữ liệu (variableType) -> String

//   var boolVar = 10;
//   print("boolVar -> $boolVar, loại dữ liệu (variableType) -> ${boolVar.runtimeType}");
//   // sẽ in ra: boolVar -> 10, loại dữ liệu (variableType) -> int

//   var arrayVar = [1, 2, 3];
//   print("arrayVar -> $arrayVar, loại dữ liệu (variableType) -> ${arrayVar.runtimeType}");
//   // sẽ in ra: arrayVar -> [1, 2, 3], loại dữ liệu (variableType) -> List<int>

//   var mapVar = {"key": "value"};
//   print("mapVar -> $mapVar, loại dữ liệu (variableType) -> ${mapVar.runtimeType}");
//   // sẽ in ra: mapVar -> {key: value}, loại dữ liệu (variableType) -> _InternalLinkedHashMap<String, String>




//   /// Khai báo biến dynamic
//   /// Giống var, nhưng có thể thay đổi variable type
//   dynamic dynamicA = 10;
//   print("dynamicA -> $dynamicA, loại dữ liệu (variableType) -> ${dynamicA.runtimeType}");
//   // sẽ in ra: dynamicA -> 10, loại dữ liệu (variableType) -> int

//   dynamicA = 10.0;
//   print("dynamicA -> $dynamicA, loại dữ liệu (variableType) -> ${dynamicA.runtimeType}");
//   // sẽ in ra: dynamicA -> 10.0, loại dữ liệu (variableType) -> double

//   dynamicA = "A";
//   print("dynamicA -> $dynamicA, loại dữ liệu (variableType) -> ${dynamicA.runtimeType}");
//   // sẽ in ra: dynamicA -> A, loại dữ liệu (variableType) -> String

//   dynamicA = true;
//   print("dynamicA -> $dynamicA, loại dữ liệu (variableType) -> ${dynamicA.runtimeType}");
//   // sẽ in ra: dynamicA -> true, loại dữ liệu (variableType) -> bool

//   dynamicA = [1, 2, 3];
//   print("dynamicA -> $dynamicA, loại dữ liệu (variableType) -> ${dynamicA.runtimeType}");
//   // sẽ in ra: dynamicA -> [1, 2, 3], loại dữ liệu (variableType) -> List<int>

//   dynamicA = {"key": "value"};
//   print("dynamicA -> $dynamicA, loại dữ liệu (variableType) -> ${dynamicA.runtimeType}");
//   // sẽ in ra: dynamicA -> {key: value}, loại dữ liệu (variableType) -> _InternalLinkedHashMap<String, String>

//   /// error khi chạy, vì dynamicA hiện tại là Map, không có phương thức toInt()
//   var a = dynamicA?.toInt();
//   print("a -> $a");
//   // sẽ in ra: Class '_InternalLinkedHashMap<String, String>' has no instance method 'toInt'

//   /*
//    - dynamic đúng với cái tên của nó, có thể sử dụng linh hoạt trong rất nhiều trường hợp
//    - Nhưng đây vừa là ưu điểm, vừa là nhược điểm:
//       - Trong ví dụ trên, nếu không check [runtimeType] thì khó mà biết được variable type của dynamic,
//       điều này dễ dẫn tới việc sử dụng sai phương thức
//   */
// }

// class A {
//   static bool d = false;

//   void test(){
//     const a = 10;
//     final b = "b";
//     late String c;

//     a = 20; // vì a là const, nên không thể thay đổi giá trị

//     void initB(){
//       b = 10; // vì b là final, nên không thể thay đổi giá trị
//     }

//     initB();

//     void initC(){
//       c = "c";
//     }

//     initC();
//   }
// }

// void main(List<String> args) {
//   Test test = Test().instance(); // phải chỉ rõ rằng hàm `instance` trả về đối tượng `Test`
  
//   var a = Test().instance(); // không cần quan tâm tới `variable type` của hàm `instance`

//   /// sử dụng var/dynamic thích hợp cho việc trung chuyển các `variable`
//   /// tức chuyển từ hàm này qua hàm khác, class này qua class khác
// }

// class Test{
//   Test instance(){return this;}
// }

void main(List<String> args) {
  DataKeeper dataKeeper = DataKeeper();

  print("a -> ${dataKeeper.a.toString()}");
  // sẽ in ra: 
  // Unhandled exception:
  // LateInitializationError: Field 'a' has not been initialized.
}

class DataKeeper{
  late int a;
}