import 'package:json_annotation/json_annotation.dart';

enum DestinyRecordToastStyle {
  ///None = 0
  @JsonValue(0)
  None,
  ///Record = 1
  @JsonValue(1)
  Record,
  ///Lore = 2
  @JsonValue(2)
  Lore,
  ///Badge = 3
  @JsonValue(3)
  Badge,
  ///MetaRecord = 4
  @JsonValue(4)
  MetaRecord,
  ///MedalComplete = 5
  @JsonValue(5)
  MedalComplete,
  ///SeasonChallengeComplete = 6
  @JsonValue(6)
  SeasonChallengeComplete,
  ///GildedTitleComplete = 7
  @JsonValue(7)
  GildedTitleComplete,
  ///CraftingRecipeUnlocked = 8
  @JsonValue(8)
  CraftingRecipeUnlocked,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyRecordToastStyleExtension on DestinyRecordToastStyle{
  int? get value {
    if (_$DestinyRecordToastStyleEnumMap.containsKey(this)){
      return _$DestinyRecordToastStyleEnumMap[this];
    }
    return null;
  }
}

DestinyRecordToastStyle? decodeDestinyRecordToastStyle (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$DestinyRecordToastStyleValueMap.containsKey(value)){
    return _$DestinyRecordToastStyleValueMap[value];
  }

  return DestinyRecordToastStyle.ProtectedInvalidEnumValue;
}

int? encodeDestinyRecordToastStyle (DestinyRecordToastStyle? value) {
  return value?.value;
}

const Map<DestinyRecordToastStyle, int> _$DestinyRecordToastStyleEnumMap = <DestinyRecordToastStyle, int>{
    DestinyRecordToastStyle.None:0,
    DestinyRecordToastStyle.Record:1,
    DestinyRecordToastStyle.Lore:2,
    DestinyRecordToastStyle.Badge:3,
    DestinyRecordToastStyle.MetaRecord:4,
    DestinyRecordToastStyle.MedalComplete:5,
    DestinyRecordToastStyle.SeasonChallengeComplete:6,
    DestinyRecordToastStyle.GildedTitleComplete:7,
    DestinyRecordToastStyle.CraftingRecipeUnlocked:8,
};
const Map<int, DestinyRecordToastStyle> _$DestinyRecordToastStyleValueMap = <int, DestinyRecordToastStyle>{
    0:DestinyRecordToastStyle.None,
    1:DestinyRecordToastStyle.Record,
    2:DestinyRecordToastStyle.Lore,
    3:DestinyRecordToastStyle.Badge,
    4:DestinyRecordToastStyle.MetaRecord,
    5:DestinyRecordToastStyle.MedalComplete,
    6:DestinyRecordToastStyle.SeasonChallengeComplete,
    7:DestinyRecordToastStyle.GildedTitleComplete,
    8:DestinyRecordToastStyle.CraftingRecipeUnlocked,
};