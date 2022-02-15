import 'package:json_annotation/json_annotation.dart';

enum DestinyAmmunitionType {
  ///None = 0
  @JsonValue(0)
  None,
  ///Primary = 1
  @JsonValue(1)
  Primary,
  ///Special = 2
  @JsonValue(2)
  Special,
  ///Heavy = 3
  @JsonValue(3)
  Heavy,
  ///Unknown = 4
  @JsonValue(4)
  Unknown,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyAmmunitionTypeExtension on DestinyAmmunitionType{
  int? get value {
    if (_$DestinyAmmunitionTypeEnumMap.containsKey(this)){
      return _$DestinyAmmunitionTypeEnumMap[this];
    }
    return null;
  }
}

DestinyAmmunitionType? decodeDestinyAmmunitionType (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$DestinyAmmunitionTypeValueMap.containsKey(value)){
    return _$DestinyAmmunitionTypeValueMap[value];
  }

  return DestinyAmmunitionType.ProtectedInvalidEnumValue;
}

int? encodeDestinyAmmunitionType (DestinyAmmunitionType? value) {
  return value?.value;
}

const Map<DestinyAmmunitionType, int> _$DestinyAmmunitionTypeEnumMap = <DestinyAmmunitionType, int>{
    DestinyAmmunitionType.None:0,
    DestinyAmmunitionType.Primary:1,
    DestinyAmmunitionType.Special:2,
    DestinyAmmunitionType.Heavy:3,
    DestinyAmmunitionType.Unknown:4,
};
const Map<int, DestinyAmmunitionType> _$DestinyAmmunitionTypeValueMap = <int, DestinyAmmunitionType>{
    0:DestinyAmmunitionType.None,
    1:DestinyAmmunitionType.Primary,
    2:DestinyAmmunitionType.Special,
    3:DestinyAmmunitionType.Heavy,
    4:DestinyAmmunitionType.Unknown,
};