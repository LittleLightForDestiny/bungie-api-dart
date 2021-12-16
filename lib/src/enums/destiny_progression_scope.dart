import 'package:json_annotation/json_annotation.dart';

enum DestinyProgressionScope {
  ///Account = 0
  @JsonValue(0)
  Account,
  ///Character = 1
  @JsonValue(1)
  Character,
  ///Clan = 2
  @JsonValue(2)
  Clan,
  ///Item = 3
  @JsonValue(3)
  Item,
  ///ImplicitFromEquipment = 4
  @JsonValue(4)
  ImplicitFromEquipment,
  ///Mapped = 5
  @JsonValue(5)
  Mapped,
  ///MappedAggregate = 6
  @JsonValue(6)
  MappedAggregate,
  ///MappedStat = 7
  @JsonValue(7)
  MappedStat,
  ///MappedUnlockValue = 8
  @JsonValue(8)
  MappedUnlockValue,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyProgressionScopeExtension on DestinyProgressionScope{
  int? get value {
    switch(this){
      case DestinyProgressionScope.Account:
        return 0;
      case DestinyProgressionScope.Character:
        return 1;
      case DestinyProgressionScope.Clan:
        return 2;
      case DestinyProgressionScope.Item:
        return 3;
      case DestinyProgressionScope.ImplicitFromEquipment:
        return 4;
      case DestinyProgressionScope.Mapped:
        return 5;
      case DestinyProgressionScope.MappedAggregate:
        return 6;
      case DestinyProgressionScope.MappedStat:
        return 7;
      case DestinyProgressionScope.MappedUnlockValue:
        return 8;
      default:
        return null;
    }
  }
}