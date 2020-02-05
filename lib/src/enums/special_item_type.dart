import 'package:json_annotation/json_annotation.dart';

enum SpecialItemType {
  ///None = 0
  @JsonValue(0)
  None,
  ///SpecialCurrency = 1
  @JsonValue(1)
  SpecialCurrency,
  ///Armor = 8
  @JsonValue(8)
  Armor,
  ///Weapon = 9
  @JsonValue(9)
  Weapon,
  ///Engram = 23
  @JsonValue(23)
  Engram,
  ///Consumable = 24
  @JsonValue(24)
  Consumable,
  ///ExchangeMaterial = 25
  @JsonValue(25)
  ExchangeMaterial,
  ///MissionReward = 27
  @JsonValue(27)
  MissionReward,
  ///Currency = 29
  @JsonValue(29)
  Currency,
}

extension SpecialItemTypeExtension on SpecialItemType{
  int get value {
    switch(this){
      case SpecialItemType.None:
        return 0;
      case SpecialItemType.SpecialCurrency:
        return 1;
      case SpecialItemType.Armor:
        return 8;
      case SpecialItemType.Weapon:
        return 9;
      case SpecialItemType.Engram:
        return 23;
      case SpecialItemType.Consumable:
        return 24;
      case SpecialItemType.ExchangeMaterial:
        return 25;
      case SpecialItemType.MissionReward:
        return 27;
      case SpecialItemType.Currency:
        return 29;
      default:
        return null;
    }
  }
}