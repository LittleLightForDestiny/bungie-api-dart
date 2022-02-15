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
  int? get value {
    if (_$DestinyRecordValueStyleEnumMap.containsKey(this)){
      return _$DestinyRecordValueStyleEnumMap[this];
    }
    return null;
  }
}

DestinyRecordValueStyle? decodeDestinyRecordValueStyle (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$DestinyRecordValueStyleValueMap.containsKey(value)){
    return _$DestinyRecordValueStyleValueMap[value];
  }

  return DestinyRecordValueStyle.ProtectedInvalidEnumValue;
}

int? encodeDestinyRecordValueStyle (DestinyRecordValueStyle? value) {
  return value?.value;
}

const Map<DestinyRecordValueStyle, int> _$DestinyRecordValueStyleEnumMap = <DestinyRecordValueStyle, int>{
    DestinyRecordValueStyle.Integer:0,
    DestinyRecordValueStyle.Percentage:1,
    DestinyRecordValueStyle.Milliseconds:2,
    DestinyRecordValueStyle.Boolean:3,
    DestinyRecordValueStyle.Decimal:4,
};
const Map<int, DestinyRecordValueStyle> _$DestinyRecordValueStyleValueMap = <int, DestinyRecordValueStyle>{
    0:DestinyRecordValueStyle.Integer,
    1:DestinyRecordValueStyle.Percentage,
    2:DestinyRecordValueStyle.Milliseconds,
    3:DestinyRecordValueStyle.Boolean,
    4:DestinyRecordValueStyle.Decimal,
};