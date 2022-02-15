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
  int? get value {
    if (_$GlobalAlertLevelEnumMap.containsKey(this)){
      return _$GlobalAlertLevelEnumMap[this];
    }
    return null;
  }
}

GlobalAlertLevel? decodeGlobalAlertLevel (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$GlobalAlertLevelValueMap.containsKey(value)){
    return _$GlobalAlertLevelValueMap[value];
  }

  return GlobalAlertLevel.ProtectedInvalidEnumValue;
}

int? encodeGlobalAlertLevel (GlobalAlertLevel? value) {
  return value?.value;
}

const Map<GlobalAlertLevel, int> _$GlobalAlertLevelEnumMap = <GlobalAlertLevel, int>{
    GlobalAlertLevel.Unknown:0,
    GlobalAlertLevel.Blue:1,
    GlobalAlertLevel.Yellow:2,
    GlobalAlertLevel.Red:3,
};
const Map<int, GlobalAlertLevel> _$GlobalAlertLevelValueMap = <int, GlobalAlertLevel>{
    0:GlobalAlertLevel.Unknown,
    1:GlobalAlertLevel.Blue,
    2:GlobalAlertLevel.Yellow,
    3:GlobalAlertLevel.Red,
};