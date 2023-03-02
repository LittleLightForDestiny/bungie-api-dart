import 'package:json_annotation/json_annotation.dart';

enum DamageType {
  ///None = 0
  @JsonValue(0)
  None,
  ///Kinetic = 1
  @JsonValue(1)
  Kinetic,
  ///Arc = 2
  @JsonValue(2)
  Arc,
  ///Thermal = 3
  @JsonValue(3)
  Thermal,
  ///Void = 4
  @JsonValue(4)
  Void,
  ///Raid = 5
  @JsonValue(5)
  Raid,
  ///Stasis = 6
  @JsonValue(6)
  Stasis,
  ///Strand = 7
  @JsonValue(7)
  Strand,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DamageTypeExtension on DamageType{
  int? get value {
    if (_$DamageTypeEnumMap.containsKey(this)){
      return _$DamageTypeEnumMap[this];
    }
    return null;
  }
}

DamageType? decodeDamageType (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$DamageTypeValueMap.containsKey(value)){
    return _$DamageTypeValueMap[value];
  }

  return DamageType.ProtectedInvalidEnumValue;
}

int? encodeDamageType (DamageType? value) {
  return value?.value;
}

const Map<DamageType, int> _$DamageTypeEnumMap = <DamageType, int>{
    DamageType.None:0,
    DamageType.Kinetic:1,
    DamageType.Arc:2,
    DamageType.Thermal:3,
    DamageType.Void:4,
    DamageType.Raid:5,
    DamageType.Stasis:6,
    DamageType.Strand:7,
};
const Map<int, DamageType> _$DamageTypeValueMap = <int, DamageType>{
    0:DamageType.None,
    1:DamageType.Kinetic,
    2:DamageType.Arc,
    3:DamageType.Thermal,
    4:DamageType.Void,
    5:DamageType.Raid,
    6:DamageType.Stasis,
    7:DamageType.Strand,
};