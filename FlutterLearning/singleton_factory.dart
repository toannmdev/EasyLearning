void main(List<String> args) {
  var s1 = Singleton();
  var s2 = Singleton();

  // hàm identical giúp ta so sánh cùng địa chỉ hay ko?. Giống toán tử === bên Kotlin
  print(identical(s1, s2)); // in ra: true
}

class Singleton {
  static final Singleton _singleton = Singleton._internal();

  // factory constructor
  factory Singleton() {
    return _singleton;
  }

  // Như mình đã nói ở trên thì đây là private constructor
  Singleton._internal();
}
