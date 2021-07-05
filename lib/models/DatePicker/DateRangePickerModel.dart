import 'package:intl/intl.dart';

class DateRangePickerModel {
  DateTime? startDate;
  DateTime? endDate;

  List<DateTime> blackoutDays = [];

  int get days {
    if (startDate != null) return (endDate ?? startDate)!.difference(startDate!).inDays + 1;
    return 0;
  }

  String get startDateString => startDate != null ? DateFormat('dd-MM-yyyy').format(startDate!).toString() : "";
  String get endDateString => endDate != null ? DateFormat('dd-MM-yyyy').format(endDate!).toString() : "";

  bool isRangeContainsBlackoutDays() {
    for (var day in blackoutDays) {
      if (day.isAfter(startDate!) && day.isBefore(endDate!)) return true;
    }
    return false;
  }
}
