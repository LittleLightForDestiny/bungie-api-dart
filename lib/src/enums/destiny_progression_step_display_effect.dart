import 'package:json_annotation/json_annotation.dart';

enum DestinyProgressionStepDisplayEffect {
  ///None = 0
  @JsonValue(0)
  None,
  ///Character = 1
  @JsonValue(1)
  Character,
  ///Item = 2
  @JsonValue(2)
  Item,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyProgressionStepDisplayEffectExtension on DestinyProgressionStepDisplayEffect{
  int? get value {
    if (_$DestinyProgressionStepDisplayEffectEnumMap.containsKey(this)){
      return _$DestinyProgressionStepDisplayEffectEnumMap[this];
    }
    return null;
  }
}

DestinyProgressionStepDisplayEffect? decodeDestinyProgressionStepDisplayEffect (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$DestinyProgressionStepDisplayEffectValueMap.containsKey(value)){
    return _$DestinyProgressionStepDisplayEffectValueMap[value];
  }

  return DestinyProgressionStepDisplayEffect.ProtectedInvalidEnumValue;
}

int? encodeDestinyProgressionStepDisplayEffect (DestinyProgressionStepDisplayEffect? value) {
  return value?.value;
}

const Map<DestinyProgressionStepDisplayEffect, int> _$DestinyProgressionStepDisplayEffectEnumMap = <DestinyProgressionStepDisplayEffect, int>{
    DestinyProgressionStepDisplayEffect.None:0,
    DestinyProgressionStepDisplayEffect.Character:1,
    DestinyProgressionStepDisplayEffect.Item:2,
};
const Map<int, DestinyProgressionStepDisplayEffect> _$DestinyProgressionStepDisplayEffectValueMap = <int, DestinyProgressionStepDisplayEffect>{
    0:DestinyProgressionStepDisplayEffect.None,
    1:DestinyProgressionStepDisplayEffect.Character,
    2:DestinyProgressionStepDisplayEffect.Item,
};