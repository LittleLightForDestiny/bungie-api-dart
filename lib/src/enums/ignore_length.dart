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
    if (_$IgnoreLengthEnumMap.containsKey(this)){
      return _$IgnoreLengthEnumMap[this];
    }
    return null;
  }
}

IgnoreLength? decodeIgnoreLength (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$IgnoreLengthValueMap.containsKey(value)){
    return _$IgnoreLengthValueMap[value];
  }

  return IgnoreLength.ProtectedInvalidEnumValue;
}

int? encodeIgnoreLength (IgnoreLength? value) {
  return value?.value;
}

const Map<IgnoreLength, int> _$IgnoreLengthEnumMap = <IgnoreLength, int>{
    IgnoreLength.None:0,
    IgnoreLength.Week:1,
    IgnoreLength.TwoWeeks:2,
    IgnoreLength.ThreeWeeks:3,
    IgnoreLength.Month:4,
    IgnoreLength.ThreeMonths:5,
    IgnoreLength.SixMonths:6,
    IgnoreLength.Year:7,
    IgnoreLength.Forever:8,
    IgnoreLength.ThreeMinutes:9,
    IgnoreLength.Hour:10,
    IgnoreLength.ThirtyDays:11,
};
const Map<int, IgnoreLength> _$IgnoreLengthValueMap = <int, IgnoreLength>{
    0:IgnoreLength.None,
    1:IgnoreLength.Week,
    2:IgnoreLength.TwoWeeks,
    3:IgnoreLength.ThreeWeeks,
    4:IgnoreLength.Month,
    5:IgnoreLength.ThreeMonths,
    6:IgnoreLength.SixMonths,
    7:IgnoreLength.Year,
    8:IgnoreLength.Forever,
    9:IgnoreLength.ThreeMinutes,
    10:IgnoreLength.Hour,
    11:IgnoreLength.ThirtyDays,
};