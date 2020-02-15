import 'package:json_annotation/json_annotation.dart';

enum DestinyRecordValueStyle {
  ///Integer = 0
  @JsonValue(0)
  Integer,
  ///Percentage = 1
  @JsonValue(1)
  Percentage,
  ///Milliseconds = 2
  @JsonValue(2)
  Milliseconds,
  ///Boolean = 3
  @JsonValue(3)
  Boolean,
  ///Decimal = 4
  @JsonValue(4)
  Decimal,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyRecordValueStyleExtension on DestinyRecordValueStyle{
  int get value {
    switch(this){
      case DestinyRecordValueStyle.Integer:
        return 0;
      case DestinyRecordValueStyle.Percentage:
        return 1;
      case DestinyRecordValueStyle.Milliseconds:
        return 2;
      case DestinyRecordValueStyle.Boolean:
        return 3;
      case DestinyRecordValueStyle.Decimal:
        return 4;
      default:
        return null;
    }
  }
}