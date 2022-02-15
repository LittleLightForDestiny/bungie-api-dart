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
    if (_$DestinyProgressionScopeEnumMap.containsKey(this)){
      return _$DestinyProgressionScopeEnumMap[this];
    }
    return null;
  }
}

DestinyProgressionScope? decodeDestinyProgressionScope (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$DestinyProgressionScopeValueMap.containsKey(value)){
    return _$DestinyProgressionScopeValueMap[value];
  }

  return DestinyProgressionScope.ProtectedInvalidEnumValue;
}

int? encodeDestinyProgressionScope (DestinyProgressionScope? value) {
  return value?.value;
}

const Map<DestinyProgressionScope, int> _$DestinyProgressionScopeEnumMap = <DestinyProgressionScope, int>{
    DestinyProgressionScope.Account:0,
    DestinyProgressionScope.Character:1,
    DestinyProgressionScope.Clan:2,
    DestinyProgressionScope.Item:3,
    DestinyProgressionScope.ImplicitFromEquipment:4,
    DestinyProgressionScope.Mapped:5,
    DestinyProgressionScope.MappedAggregate:6,
    DestinyProgressionScope.MappedStat:7,
    DestinyProgressionScope.MappedUnlockValue:8,
};
const Map<int, DestinyProgressionScope> _$DestinyProgressionScopeValueMap = <int, DestinyProgressionScope>{
    0:DestinyProgressionScope.Account,
    1:DestinyProgressionScope.Character,
    2:DestinyProgressionScope.Clan,
    3:DestinyProgressionScope.Item,
    4:DestinyProgressionScope.ImplicitFromEquipment,
    5:DestinyProgressionScope.Mapped,
    6:DestinyProgressionScope.MappedAggregate,
    7:DestinyProgressionScope.MappedStat,
    8:DestinyProgressionScope.MappedUnlockValue,
};