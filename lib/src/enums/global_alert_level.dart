import 'package:json_annotation/json_annotation.dart';

enum GlobalAlertLevel {
  ///Unknown = 0
  @JsonValue(0)
  Unknown,
  ///Blue = 1
  @JsonValue(1)
  Blue,
  ///Yellow = 2
  @JsonValue(2)
  Yellow,
  ///Red = 3
  @JsonValue(3)
  Red,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension GlobalAlertLevelExtension on GlobalAlertLevel{
  int get value {
    switch(this){
      case GlobalAlertLevel.Unknown:
        return 0;
      case GlobalAlertLevel.Blue:
        return 1;
      case GlobalAlertLevel.Yellow:
        return 2;
      case GlobalAlertLevel.Red:
        return 3;
      default:
        return null;
    }
  }
}