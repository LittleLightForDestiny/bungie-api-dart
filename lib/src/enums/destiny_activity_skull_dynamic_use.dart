import 'package:json_annotation/json_annotation.dart';

enum DestinyActivitySkullDynamicUse {
  ///Unknown = 0
  @JsonValue(0)
  Unknown,
  ///Allowed = 1
  @JsonValue(1)
  Allowed,
  ///Disallowed = 2
  @JsonValue(2)
  Disallowed,
  ///Count = 3
  @JsonValue(3)
  Count,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyActivitySkullDynamicUseExtension on DestinyActivitySkullDynamicUse{
  int? get value {
    if (_$DestinyActivitySkullDynamicUseEnumMap.containsKey(this)){
      return _$DestinyActivitySkullDynamicUseEnumMap[this];
    }
    return null;
  }
}

DestinyActivitySkullDynamicUse? decodeDestinyActivitySkullDynamicUse (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$DestinyActivitySkullDynamicUseValueMap.containsKey(value)){
    return _$DestinyActivitySkullDynamicUseValueMap[value];
  }

  return DestinyActivitySkullDynamicUse.ProtectedInvalidEnumValue;
}

int? encodeDestinyActivitySkullDynamicUse (DestinyActivitySkullDynamicUse? value) {
  return value?.value;
}

const Map<DestinyActivitySkullDynamicUse, int> _$DestinyActivitySkullDynamicUseEnumMap = <DestinyActivitySkullDynamicUse, int>{
    DestinyActivitySkullDynamicUse.Unknown:0,
    DestinyActivitySkullDynamicUse.Allowed:1,
    DestinyActivitySkullDynamicUse.Disallowed:2,
    DestinyActivitySkullDynamicUse.Count:3,
};
const Map<int, DestinyActivitySkullDynamicUse> _$DestinyActivitySkullDynamicUseValueMap = <int, DestinyActivitySkullDynamicUse>{
    0:DestinyActivitySkullDynamicUse.Unknown,
    1:DestinyActivitySkullDynamicUse.Allowed,
    2:DestinyActivitySkullDynamicUse.Disallowed,
    3:DestinyActivitySkullDynamicUse.Count,
};