import 'package:json_annotation/json_annotation.dart';

enum DestinyRace {
  ///Human = 0
  @JsonValue(0)
  Human,
  ///Awoken = 1
  @JsonValue(1)
  Awoken,
  ///Exo = 2
  @JsonValue(2)
  Exo,
  ///Unknown = 3
  @JsonValue(3)
  Unknown,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyRaceExtension on DestinyRace{
  int? get value {
    switch(this){
      case DestinyRace.Human:
        return 0;
      case DestinyRace.Awoken:
        return 1;
      case DestinyRace.Exo:
        return 2;
      case DestinyRace.Unknown:
        return 3;
      default:
        return null;
    }
  }
}