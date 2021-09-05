import 'package:json_annotation/json_annotation.dart';

enum IgnoreLength {
  ///None = 0
  @JsonValue(0)
  None,
  ///Week = 1
  @JsonValue(1)
  Week,
  ///TwoWeeks = 2
  @JsonValue(2)
  TwoWeeks,
  ///ThreeWeeks = 3
  @JsonValue(3)
  ThreeWeeks,
  ///Month = 4
  @JsonValue(4)
  Month,
  ///ThreeMonths = 5
  @JsonValue(5)
  ThreeMonths,
  ///SixMonths = 6
  @JsonValue(6)
  SixMonths,
  ///Year = 7
  @JsonValue(7)
  Year,
  ///Forever = 8
  @JsonValue(8)
  Forever,
  ///ThreeMinutes = 9
  @JsonValue(9)
  ThreeMinutes,
  ///Hour = 10
  @JsonValue(10)
  Hour,
  ///ThirtyDays = 11
  @JsonValue(11)
  ThirtyDays,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension IgnoreLengthExtension on IgnoreLength{
  int? get value {
    switch(this){
      case IgnoreLength.None:
        return 0;
      case IgnoreLength.Week:
        return 1;
      case IgnoreLength.TwoWeeks:
        return 2;
      case IgnoreLength.ThreeWeeks:
        return 3;
      case IgnoreLength.Month:
        return 4;
      case IgnoreLength.ThreeMonths:
        return 5;
      case IgnoreLength.SixMonths:
        return 6;
      case IgnoreLength.Year:
        return 7;
      case IgnoreLength.Forever:
        return 8;
      case IgnoreLength.ThreeMinutes:
        return 9;
      case IgnoreLength.Hour:
        return 10;
      case IgnoreLength.ThirtyDays:
        return 11;
      default:
        return null;
    }
  }
}