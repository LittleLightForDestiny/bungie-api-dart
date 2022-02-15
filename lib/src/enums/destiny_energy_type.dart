import 'package:json_annotation/json_annotation.dart';

enum DestinyEnergyType {
  ///Any = 0
  @JsonValue(0)
  Any,
  ///Arc = 1
  @JsonValue(1)
  Arc,
  ///Thermal = 2
  @JsonValue(2)
  Thermal,
  ///Void = 3
  @JsonValue(3)
  Void,
  ///Ghost = 4
  @JsonValue(4)
  Ghost,
  ///Subclass = 5
  @JsonValue(5)
  Subclass,
  ///Stasis = 6
  @JsonValue(6)
  Stasis,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyEnergyTypeExtension on DestinyEnergyType{
  int? get value {
    if (_$DestinyEnergyTypeEnumMap.containsKey(this)){
      return _$DestinyEnergyTypeEnumMap[this];
    }
    return null;
  }
}

DestinyEnergyType? decodeDestinyEnergyType (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$DestinyEnergyTypeValueMap.containsKey(value)){
    return _$DestinyEnergyTypeValueMap[value];
  }

  return DestinyEnergyType.ProtectedInvalidEnumValue;
}

int? encodeDestinyEnergyType (DestinyEnergyType? value) {
  return value?.value;
}

const Map<DestinyEnergyType, int> _$DestinyEnergyTypeEnumMap = <DestinyEnergyType, int>{
    DestinyEnergyType.Any:0,
    DestinyEnergyType.Arc:1,
    DestinyEnergyType.Thermal:2,
    DestinyEnergyType.Void:3,
    DestinyEnergyType.Ghost:4,
    DestinyEnergyType.Subclass:5,
    DestinyEnergyType.Stasis:6,
};
const Map<int, DestinyEnergyType> _$DestinyEnergyTypeValueMap = <int, DestinyEnergyType>{
    0:DestinyEnergyType.Any,
    1:DestinyEnergyType.Arc,
    2:DestinyEnergyType.Thermal,
    3:DestinyEnergyType.Void,
    4:DestinyEnergyType.Ghost,
    5:DestinyEnergyType.Subclass,
    6:DestinyEnergyType.Stasis,
};