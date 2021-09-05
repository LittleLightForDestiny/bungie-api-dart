import 'package:json_annotation/json_annotation.dart';

enum PeriodType {
  ///None = 0
  @JsonValue(0)
  None,
  ///Daily = 1
  @JsonValue(1)
  Daily,
  ///AllTime = 2
  @JsonValue(2)
  AllTime,
  ///Activity = 3
  @JsonValue(3)
  Activity,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension PeriodTypeExtension on PeriodType{
  int? get value {
    switch(this){
      case PeriodType.None:
        return 0;
      case PeriodType.Daily:
        return 1;
      case PeriodType.AllTime:
        return 2;
      case PeriodType.Activity:
        return 3;
      default:
        return null;
    }
  }
}