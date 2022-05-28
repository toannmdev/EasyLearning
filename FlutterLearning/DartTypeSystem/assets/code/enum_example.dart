enum DayOfWeeks {
  Monday,
  Tuesday,
  Wednesday,
  Thursday,
  Friday,
  Saturday,
  Sunday,
}

extension DayOfWeeksExt on DayOfWeeks {
  String getName() {
    switch (this) {
      case DayOfWeeks.Monday:
        return "Thứ 2";
      case DayOfWeeks.Tuesday:
        return "Thứ 3";
      case DayOfWeeks.Wednesday:
        return "Thứ 4";
      case DayOfWeeks.Thursday:
        return "Thứ 5";
      case DayOfWeeks.Friday:
        return "Thứ 6";
      case DayOfWeeks.Saturday:
        return "Thứ 7";
      case DayOfWeeks.Sunday:
        return "Chủ nhật";
      default:
        return "Không xác định";
    }
  }
}

void main(List<String> args) {
  List<DayOfWeeks> dayOfWeeks = DayOfWeeks.values;
  dayOfWeeks.forEach((element) {
    print("day is: ${element.getName()}");
    // sẽ in ra: các ngày từ thứ 2 -> chủ nhật
    // day is: Thứ 2
    // day is: Thứ 3
    // day is: Thứ 4
    // day is: Thứ 5
    // day is: Thứ 6
    // day is: Thứ 7
    // day is: Chủ nhật
  });
}