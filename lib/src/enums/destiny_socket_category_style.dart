import 'package:json_annotation/json_annotation.dart';

enum DestinySocketCategoryStyle {
  ///Unknown = 0
  @JsonValue(0)
  Unknown,
  ///Reusable = 1
  @JsonValue(1)
  Reusable,
  ///Consumable = 2
  @JsonValue(2)
  Consumable,
  ///Unlockable = 3
  @JsonValue(3)
  Unlockable,
  ///Intrinsic = 4
  @JsonValue(4)
  Intrinsic,
  ///EnergyMeter = 5
  @JsonValue(5)
  EnergyMeter,
  ///LargePerk = 6
  @JsonValue(6)
  LargePerk,
  ///Abilities = 7
  @JsonValue(7)
  Abilities,
  ///Supers = 8
  @JsonValue(8)
  Supers,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinySocketCategoryStyleExtension on DestinySocketCategoryStyle{
  int get value {
    switch(this){
      case DestinySocketCategoryStyle.Unknown:
        return 0;
      case DestinySocketCategoryStyle.Reusable:
        return 1;
      case DestinySocketCategoryStyle.Consumable:
        return 2;
      case DestinySocketCategoryStyle.Unlockable:
        return 3;
      case DestinySocketCategoryStyle.Intrinsic:
        return 4;
      case DestinySocketCategoryStyle.EnergyMeter:
        return 5;
      case DestinySocketCategoryStyle.LargePerk:
        return 6;
      case DestinySocketCategoryStyle.Abilities:
        return 7;
      case DestinySocketCategoryStyle.Supers:
        return 8;
      default:
        return null;
    }
  }
}