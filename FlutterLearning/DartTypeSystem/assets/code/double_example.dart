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