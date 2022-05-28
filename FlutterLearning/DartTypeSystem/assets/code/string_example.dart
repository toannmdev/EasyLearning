void main(List<String> args) {
  /// Có thể sử dụng nháy đơn '' hoặc nháy kép "" để khai báo 1 string
  String s = 'Hello world ';
  String s1 = "Hello world";

  /// Tách kí tự trong 1 chuỗi
  List<String> splittedStrs = s.split(" ");
  print("splittedStrs -> $splittedStrs"); // splittedStrs -> [Hello, world]

  /// kiểm tra 1 string có chứa 1 string khác không
  bool hasWorldStr = s.contains("world");
  print("hasWorldStr -> $hasWorldStr"); // hasWorldStr -> true

  /// chuyển đổi tất cả kí tự về kí tự viết hoa, viết thường
  String sUpperCase = s.toUpperCase();
  String sLowerCase = s.toLowerCase();
  print("sUpperCase -> $sUpperCase"); // sUpperCase -> HELLO WORLD
  print("sLowerCase -> $sLowerCase"); // sLowerCase -> hello world
  
  /// lấy vị trí đầu tiên của kí tự 'o'
  int sIndexOf = s.indexOf("o");
  print("sIndexOf -> $sIndexOf"); // sIndexOf -> 4

  /// kiểm tra xem string bắt đầu với kí tự 'H'
  bool sStartWith = s.startsWith("H");
  print("sStartWith -> $sStartWith"); // sStartWith -> true

  /// thay thế các kí tự trong 1 chuỗi
  String sReplaced = s.replaceAll("world", "everyone");
  print("sReplaced -> $sReplaced"); // sReplaced -> Hello everyone

  /// loại bỏ khoảng trắng ở đầu/cuối string
  String sTrimmed = s.trim();
  print("s -> \"$s\""); // s -> "Hello world "
  print("sTrimmed -> $sTrimmed"); // sTrimmed -> Hello world
}