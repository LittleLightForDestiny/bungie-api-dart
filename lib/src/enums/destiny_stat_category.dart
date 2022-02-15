import 'package:json_annotation/json_annotation.dart';

enum DestinyStatCategory {
  ///Gameplay = 0
  @JsonValue(0)
  Gameplay,
  ///Weapon = 1
  @JsonValue(1)
  Weapon,
  ///Defense = 2
  @JsonValue(2)
  Defense,
  ///Primary = 3
  @JsonValue(3)
  Primary,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyStatCategoryExtension on DestinyStatCategory{
  int? get value {
    if (_$DestinyStatCategoryEnumMap.containsKey(this)){
      return _$DestinyStatCategoryEnumMap[this];
    }
    return null;
  }
}

DestinyStatCategory? decodeDestinyStatCategory (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$DestinyStatCategoryValueMap.containsKey(value)){
    return _$DestinyStatCategoryValueMap[value];
  }

  return DestinyStatCategory.ProtectedInvalidEnumValue;
}

int? encodeDestinyStatCategory (DestinyStatCategory? value) {
  return value?.value;
}

const Map<DestinyStatCategory, int> _$DestinyStatCategoryEnumMap = <DestinyStatCategory, int>{
    DestinyStatCategory.Gameplay:0,
    DestinyStatCategory.Weapon:1,
    DestinyStatCategory.Defense:2,
    DestinyStatCategory.Primary:3,
};
const Map<int, DestinyStatCategory> _$DestinyStatCategoryValueMap = <int, DestinyStatCategory>{
    0:DestinyStatCategory.Gameplay,
    1:DestinyStatCategory.Weapon,
    2:DestinyStatCategory.Defense,
    3:DestinyStatCategory.Primary,
};