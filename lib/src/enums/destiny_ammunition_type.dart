import 'package:json_annotation/json_annotation.dart';

enum DestinyAmmunitionType {
  ///None = 0
  @JsonValue(0)
  None,
  ///Primary = 1
  @JsonValue(1)
  Primary,
  ///Special = 2
  @JsonValue(2)
  Special,
  ///Heavy = 3
  @JsonValue(3)
  Heavy,
  ///Unknown = 4
  @JsonValue(4)
  Unknown,
}

extension DestinyAmmunitionTypeExtension on DestinyAmmunitionType{
  int get value {
    switch(this){
      case DestinyAmmunitionType.None:
        return 0;
      case DestinyAmmunitionType.Primary:
        return 1;
      case DestinyAmmunitionType.Special:
        return 2;
      case DestinyAmmunitionType.Heavy:
        return 3;
      case DestinyAmmunitionType.Unknown:
        return 4;
      default:
        return null;
    }
  }
}