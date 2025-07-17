import 'package:json_annotation/json_annotation.dart';

enum DestinyPresentationDisplayStyle {
  ///Category = 0
  /// Display the item as a category, through which sub-items are filtered.
  @JsonValue(0)
  Category,
  ///Badge = 1
  @JsonValue(1)
  Badge,
  ///Medals = 2
  @JsonValue(2)
  Medals,
  ///Collectible = 3
  @JsonValue(3)
  Collectible,
  ///Record = 4
  @JsonValue(4)
  Record,
  ///SeasonalTriumph = 5
  @JsonValue(5)
  SeasonalTriumph,
  ///GuardianRank = 6
  @JsonValue(6)
  GuardianRank,
  ///CategoryCollectibles = 7
  @JsonValue(7)
  CategoryCollectibles,
  ///CategoryCurrencies = 8
  @JsonValue(8)
  CategoryCurrencies,
  ///CategoryEmblems = 9
  @JsonValue(9)
  CategoryEmblems,
  ///CategoryEmotes = 10
  @JsonValue(10)
  CategoryEmotes,
  ///CategoryEngrams = 11
  @JsonValue(11)
  CategoryEngrams,
  ///CategoryFinishers = 12
  @JsonValue(12)
  CategoryFinishers,
  ///CategoryGhosts = 13
  @JsonValue(13)
  CategoryGhosts,
  ///CategoryMisc = 14
  @JsonValue(14)
  CategoryMisc,
  ///CategoryMods = 15
  @JsonValue(15)
  CategoryMods,
  ///CategoryOrnaments = 16
  @JsonValue(16)
  CategoryOrnaments,
  ///CategoryShaders = 17
  @JsonValue(17)
  CategoryShaders,
  ///CategoryShips = 18
  @JsonValue(18)
  CategoryShips,
  ///CategorySpawnfx = 19
  @JsonValue(19)
  CategorySpawnfx,
  ///CategoryUpgradeMaterials = 20
  @JsonValue(20)
  CategoryUpgradeMaterials,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyPresentationDisplayStyleExtension on DestinyPresentationDisplayStyle{
  int? get value {
    if (_$DestinyPresentationDisplayStyleEnumMap.containsKey(this)){
      return _$DestinyPresentationDisplayStyleEnumMap[this];
    }
    return null;
  }
}

DestinyPresentationDisplayStyle? decodeDestinyPresentationDisplayStyle (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$DestinyPresentationDisplayStyleValueMap.containsKey(value)){
    return _$DestinyPresentationDisplayStyleValueMap[value];
  }

  return DestinyPresentationDisplayStyle.ProtectedInvalidEnumValue;
}

int? encodeDestinyPresentationDisplayStyle (DestinyPresentationDisplayStyle? value) {
  return value?.value;
}

const Map<DestinyPresentationDisplayStyle, int> _$DestinyPresentationDisplayStyleEnumMap = <DestinyPresentationDisplayStyle, int>{
    DestinyPresentationDisplayStyle.Category:0,
    DestinyPresentationDisplayStyle.Badge:1,
    DestinyPresentationDisplayStyle.Medals:2,
    DestinyPresentationDisplayStyle.Collectible:3,
    DestinyPresentationDisplayStyle.Record:4,
    DestinyPresentationDisplayStyle.SeasonalTriumph:5,
    DestinyPresentationDisplayStyle.GuardianRank:6,
    DestinyPresentationDisplayStyle.CategoryCollectibles:7,
    DestinyPresentationDisplayStyle.CategoryCurrencies:8,
    DestinyPresentationDisplayStyle.CategoryEmblems:9,
    DestinyPresentationDisplayStyle.CategoryEmotes:10,
    DestinyPresentationDisplayStyle.CategoryEngrams:11,
    DestinyPresentationDisplayStyle.CategoryFinishers:12,
    DestinyPresentationDisplayStyle.CategoryGhosts:13,
    DestinyPresentationDisplayStyle.CategoryMisc:14,
    DestinyPresentationDisplayStyle.CategoryMods:15,
    DestinyPresentationDisplayStyle.CategoryOrnaments:16,
    DestinyPresentationDisplayStyle.CategoryShaders:17,
    DestinyPresentationDisplayStyle.CategoryShips:18,
    DestinyPresentationDisplayStyle.CategorySpawnfx:19,
    DestinyPresentationDisplayStyle.CategoryUpgradeMaterials:20,
};
const Map<int, DestinyPresentationDisplayStyle> _$DestinyPresentationDisplayStyleValueMap = <int, DestinyPresentationDisplayStyle>{
    0:DestinyPresentationDisplayStyle.Category,
    1:DestinyPresentationDisplayStyle.Badge,
    2:DestinyPresentationDisplayStyle.Medals,
    3:DestinyPresentationDisplayStyle.Collectible,
    4:DestinyPresentationDisplayStyle.Record,
    5:DestinyPresentationDisplayStyle.SeasonalTriumph,
    6:DestinyPresentationDisplayStyle.GuardianRank,
    7:DestinyPresentationDisplayStyle.CategoryCollectibles,
    8:DestinyPresentationDisplayStyle.CategoryCurrencies,
    9:DestinyPresentationDisplayStyle.CategoryEmblems,
    10:DestinyPresentationDisplayStyle.CategoryEmotes,
    11:DestinyPresentationDisplayStyle.CategoryEngrams,
    12:DestinyPresentationDisplayStyle.CategoryFinishers,
    13:DestinyPresentationDisplayStyle.CategoryGhosts,
    14:DestinyPresentationDisplayStyle.CategoryMisc,
    15:DestinyPresentationDisplayStyle.CategoryMods,
    16:DestinyPresentationDisplayStyle.CategoryOrnaments,
    17:DestinyPresentationDisplayStyle.CategoryShaders,
    18:DestinyPresentationDisplayStyle.CategoryShips,
    19:DestinyPresentationDisplayStyle.CategorySpawnfx,
    20:DestinyPresentationDisplayStyle.CategoryUpgradeMaterials,
};