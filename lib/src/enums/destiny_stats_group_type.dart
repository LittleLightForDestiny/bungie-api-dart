import 'package:json_annotation/json_annotation.dart';

enum DestinyStatsGroupType {
  ///None = 0
  @JsonValue(0)
  None,
  ///General = 1
  @JsonValue(1)
  General,
  ///Weapons = 2
  @JsonValue(2)
  Weapons,
  ///Medals = 3
  @JsonValue(3)
  Medals,
  ///ReservedGroups = 100
  /// This is purely to serve as the dividing line between filterable and un-filterable groups. Below this number is a group you can pass as a filter. Above it are groups used in very specific circumstances and not relevant for filtering.
  @JsonValue(100)
  ReservedGroups,
  ///Leaderboard = 101
  /// Only applicable while generating leaderboards.
  @JsonValue(101)
  Leaderboard,
  ///Activity = 102
  /// These will *only* be consumed by GetAggregateStatsByActivity
  @JsonValue(102)
  Activity,
  ///UniqueWeapon = 103
  /// These are only consumed and returned by GetUniqueWeaponHistory
  @JsonValue(103)
  UniqueWeapon,
  ///Internal = 104
  @JsonValue(104)
  Internal,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyStatsGroupTypeExtension on DestinyStatsGroupType{
  int? get value {
    if (_$DestinyStatsGroupTypeEnumMap.containsKey(this)){
      return _$DestinyStatsGroupTypeEnumMap[this];
    }
    return null;
  }
}

DestinyStatsGroupType? decodeDestinyStatsGroupType (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$DestinyStatsGroupTypeValueMap.containsKey(value)){
    return _$DestinyStatsGroupTypeValueMap[value];
  }

  return DestinyStatsGroupType.ProtectedInvalidEnumValue;
}

int? encodeDestinyStatsGroupType (DestinyStatsGroupType? value) {
  return value?.value;
}

const Map<DestinyStatsGroupType, int> _$DestinyStatsGroupTypeEnumMap = <DestinyStatsGroupType, int>{
    DestinyStatsGroupType.None:0,
    DestinyStatsGroupType.General:1,
    DestinyStatsGroupType.Weapons:2,
    DestinyStatsGroupType.Medals:3,
    DestinyStatsGroupType.ReservedGroups:100,
    DestinyStatsGroupType.Leaderboard:101,
    DestinyStatsGroupType.Activity:102,
    DestinyStatsGroupType.UniqueWeapon:103,
    DestinyStatsGroupType.Internal:104,
};
const Map<int, DestinyStatsGroupType> _$DestinyStatsGroupTypeValueMap = <int, DestinyStatsGroupType>{
    0:DestinyStatsGroupType.None,
    1:DestinyStatsGroupType.General,
    2:DestinyStatsGroupType.Weapons,
    3:DestinyStatsGroupType.Medals,
    100:DestinyStatsGroupType.ReservedGroups,
    101:DestinyStatsGroupType.Leaderboard,
    102:DestinyStatsGroupType.Activity,
    103:DestinyStatsGroupType.UniqueWeapon,
    104:DestinyStatsGroupType.Internal,
};