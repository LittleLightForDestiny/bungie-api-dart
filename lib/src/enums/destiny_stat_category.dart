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
}

extension DestinyStatCategoryExtension on DestinyStatCategory{
  int get value {
    switch(this){
      case DestinyStatCategory.Gameplay:
        return 0;
      case DestinyStatCategory.Weapon:
        return 1;
      case DestinyStatCategory.Defense:
        return 2;
      case DestinyStatCategory.Primary:
        return 3;
      default:
        return null;
    }
  }
}