void main(List<String> args) {
  /// cách viết ngắn gọn
  Map map = {"key": "value"};
  print("map -> $map");
  // sẽ in ra: map -> {key: value}
  
  /// cách viết rõ nghĩa
  Map<String, String> map1 = Map<String, String>();
  map1["key"] = "value";
  print("map1 -> $map1");
  // sẽ in ra: map1 -> {key: value}

  /// 1 vài phương thức cơ bản
  Map<String, String> map2 = Map.from(map);
  print("map2 -> $map2");
  // sẽ in ra: map2 -> {key: value}

  String key = map1.keys.first;
  print("key from map1 -> $key");
  // sẽ in ra: key from map1 -> key

  String value = map1.values.first;
  print("value from map1 -> $value");
  // sẽ in ra: value from map1 -> value

  /// trong map key là duy nhất
  /// không thể có 2 key cùng giá trị
  Map map12 = map1..addAll(map2);
  print("map12 -> $map12");
  // sẽ in ra: map12 -> {key: value}


  /// điều gì sẽ xảy ra nếu add 1 map với key mới?
  Map mapWithNewValue = {"key": "value"}..addAll({"key": "newValue"});
  print("mapWithNewValue -> $mapWithNewValue");
  // sẽ in ra: mapWithNewValue -> {key: newValue}
}