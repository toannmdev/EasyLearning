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