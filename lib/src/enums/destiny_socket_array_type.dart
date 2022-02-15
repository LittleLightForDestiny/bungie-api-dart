import 'package:json_annotation/json_annotation.dart';

enum DestinySocketArrayType {
  ///Default = 0
  @JsonValue(0)
  Default,
  ///Intrinsic = 1
  @JsonValue(1)
  Intrinsic,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinySocketArrayTypeExtension on DestinySocketArrayType{
  int? get value {
    if (_$DestinySocketArrayTypeEnumMap.containsKey(this)){
      return _$DestinySocketArrayTypeEnumMap[this];
    }
    return null;
  }
}

DestinySocketArrayType? decodeDestinySocketArrayType (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$DestinySocketArrayTypeValueMap.containsKey(value)){
    return _$DestinySocketArrayTypeValueMap[value];
  }

  return DestinySocketArrayType.ProtectedInvalidEnumValue;
}

int? encodeDestinySocketArrayType (DestinySocketArrayType? value) {
  return value?.value;
}

const Map<DestinySocketArrayType, int> _$DestinySocketArrayTypeEnumMap = <DestinySocketArrayType, int>{
    DestinySocketArrayType.Default:0,
    DestinySocketArrayType.Intrinsic:1,
};
const Map<int, DestinySocketArrayType> _$DestinySocketArrayTypeValueMap = <int, DestinySocketArrayType>{
    0:DestinySocketArrayType.Default,
    1:DestinySocketArrayType.Intrinsic,
};