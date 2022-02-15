import 'package:json_annotation/json_annotation.dart';

enum TierType {
  ///Unknown = 0
  @JsonValue(0)
  Unknown,
  ///Currency = 1
  @JsonValue(1)
  Currency,
  ///Basic = 2
  @JsonValue(2)
  Basic,
  ///Common = 3
  @JsonValue(3)
  Common,
  ///Rare = 4
  @JsonValue(4)
  Rare,
  ///Superior = 5
  @JsonValue(5)
  Superior,
  ///Exotic = 6
  @JsonValue(6)
  Exotic,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension TierTypeExtension on TierType{
  int? get value {
    if (_$TierTypeEnumMap.containsKey(this)){
      return _$TierTypeEnumMap[this];
    }
    return null;
  }
}

TierType? decodeTierType (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$TierTypeValueMap.containsKey(value)){
    return _$TierTypeValueMap[value];
  }

  return TierType.ProtectedInvalidEnumValue;
}

int? encodeTierType (TierType? value) {
  return value?.value;
}

const Map<TierType, int> _$TierTypeEnumMap = <TierType, int>{
    TierType.Unknown:0,
    TierType.Currency:1,
    TierType.Basic:2,
    TierType.Common:3,
    TierType.Rare:4,
    TierType.Superior:5,
    TierType.Exotic:6,
};
const Map<int, TierType> _$TierTypeValueMap = <int, TierType>{
    0:TierType.Unknown,
    1:TierType.Currency,
    2:TierType.Basic,
    3:TierType.Common,
    4:TierType.Rare,
    5:TierType.Superior,
    6:TierType.Exotic,
};