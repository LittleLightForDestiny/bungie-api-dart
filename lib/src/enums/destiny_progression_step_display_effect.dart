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
    switch(this){
      case DestinyProgressionStepDisplayEffect.None:
        return 0;
      case DestinyProgressionStepDisplayEffect.Character:
        return 1;
      case DestinyProgressionStepDisplayEffect.Item:
        return 2;
      default:
        return null;
    }
  }
}