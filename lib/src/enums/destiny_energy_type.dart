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
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyEnergyTypeExtension on DestinyEnergyType{
  int get value {
    switch(this){
      case DestinyEnergyType.Any:
        return 0;
      case DestinyEnergyType.Arc:
        return 1;
      case DestinyEnergyType.Thermal:
        return 2;
      case DestinyEnergyType.Void:
        return 3;
      case DestinyEnergyType.Ghost:
        return 4;
      case DestinyEnergyType.Subclass:
        return 5;
      default:
        return null;
    }
  }
}