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
}

extension DamageTypeExtension on DamageType{
  int get value {
    switch(this){
      case DamageType.None:
        return 0;
      case DamageType.Kinetic:
        return 1;
      case DamageType.Arc:
        return 2;
      case DamageType.Thermal:
        return 3;
      case DamageType.Void:
        return 4;
      case DamageType.Raid:
        return 5;
      default:
        return null;
    }
  }
}