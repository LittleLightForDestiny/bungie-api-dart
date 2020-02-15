import 'package:json_annotation/json_annotation.dart';

enum GroupDateRange {
  ///All = 0
  @JsonValue(0)
  All,
  ///PastDay = 1
  @JsonValue(1)
  PastDay,
  ///PastWeek = 2
  @JsonValue(2)
  PastWeek,
  ///PastMonth = 3
  @JsonValue(3)
  PastMonth,
  ///PastYear = 4
  @JsonValue(4)
  PastYear,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension GroupDateRangeExtension on GroupDateRange{
  int get value {
    switch(this){
      case GroupDateRange.All:
        return 0;
      case GroupDateRange.PastDay:
        return 1;
      case GroupDateRange.PastWeek:
        return 2;
      case GroupDateRange.PastMonth:
        return 3;
      case GroupDateRange.PastYear:
        return 4;
      default:
        return null;
    }
  }
}