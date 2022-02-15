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
    if (_$PeriodTypeEnumMap.containsKey(this)){
      return _$PeriodTypeEnumMap[this];
    }
    return null;
  }
}

PeriodType? decodePeriodType (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$PeriodTypeValueMap.containsKey(value)){
    return _$PeriodTypeValueMap[value];
  }

  return PeriodType.ProtectedInvalidEnumValue;
}

int? encodePeriodType (PeriodType? value) {
  return value?.value;
}

const Map<PeriodType, int> _$PeriodTypeEnumMap = <PeriodType, int>{
    PeriodType.None:0,
    PeriodType.Daily:1,
    PeriodType.AllTime:2,
    PeriodType.Activity:3,
};
const Map<int, PeriodType> _$PeriodTypeValueMap = <int, PeriodType>{
    0:PeriodType.None,
    1:PeriodType.Daily,
    2:PeriodType.AllTime,
    3:PeriodType.Activity,
};