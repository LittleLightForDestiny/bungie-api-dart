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
    switch(this){
      case DestinyStatsGroupType.None:
        return 0;
      case DestinyStatsGroupType.General:
        return 1;
      case DestinyStatsGroupType.Weapons:
        return 2;
      case DestinyStatsGroupType.Medals:
        return 3;
      case DestinyStatsGroupType.ReservedGroups:
        return 100;
      case DestinyStatsGroupType.Leaderboard:
        return 101;
      case DestinyStatsGroupType.Activity:
        return 102;
      case DestinyStatsGroupType.UniqueWeapon:
        return 103;
      case DestinyStatsGroupType.Internal:
        return 104;
      default:
        return null;
    }
  }
}