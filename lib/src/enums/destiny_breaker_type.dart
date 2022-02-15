import 'package:json_annotation/json_annotation.dart';

enum DestinyBreakerType {
  ///None = 0
  @JsonValue(0)
  None,
  ///ShieldPiercing = 1
  @JsonValue(1)
  ShieldPiercing,
  ///Disruption = 2
  @JsonValue(2)
  Disruption,
  ///Stagger = 3
  @JsonValue(3)
  Stagger,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyBreakerTypeExtension on DestinyBreakerType{
  int? get value {
    if (_$DestinyBreakerTypeEnumMap.containsKey(this)){
      return _$DestinyBreakerTypeEnumMap[this];
    }
    return null;
  }
}

DestinyBreakerType? decodeDestinyBreakerType (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$DestinyBreakerTypeValueMap.containsKey(value)){
    return _$DestinyBreakerTypeValueMap[value];
  }

  return DestinyBreakerType.ProtectedInvalidEnumValue;
}

int? encodeDestinyBreakerType (DestinyBreakerType? value) {
  return value?.value;
}

const Map<DestinyBreakerType, int> _$DestinyBreakerTypeEnumMap = <DestinyBreakerType, int>{
    DestinyBreakerType.None:0,
    DestinyBreakerType.ShieldPiercing:1,
    DestinyBreakerType.Disruption:2,
    DestinyBreakerType.Stagger:3,
};
const Map<int, DestinyBreakerType> _$DestinyBreakerTypeValueMap = <int, DestinyBreakerType>{
    0:DestinyBreakerType.None,
    1:DestinyBreakerType.ShieldPiercing,
    2:DestinyBreakerType.Disruption,
    3:DestinyBreakerType.Stagger,
};