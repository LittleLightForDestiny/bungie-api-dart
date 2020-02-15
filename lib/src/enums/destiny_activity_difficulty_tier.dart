import 'package:json_annotation/json_annotation.dart';

enum DestinyActivityDifficultyTier {
  ///Trivial = 0
  @JsonValue(0)
  Trivial,
  ///Easy = 1
  @JsonValue(1)
  Easy,
  ///Normal = 2
  @JsonValue(2)
  Normal,
  ///Challenging = 3
  @JsonValue(3)
  Challenging,
  ///Hard = 4
  @JsonValue(4)
  Hard,
  ///Brave = 5
  @JsonValue(5)
  Brave,
  ///AlmostImpossible = 6
  @JsonValue(6)
  AlmostImpossible,
  ///Impossible = 7
  @JsonValue(7)
  Impossible,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyActivityDifficultyTierExtension on DestinyActivityDifficultyTier{
  int get value {
    switch(this){
      case DestinyActivityDifficultyTier.Trivial:
        return 0;
      case DestinyActivityDifficultyTier.Easy:
        return 1;
      case DestinyActivityDifficultyTier.Normal:
        return 2;
      case DestinyActivityDifficultyTier.Challenging:
        return 3;
      case DestinyActivityDifficultyTier.Hard:
        return 4;
      case DestinyActivityDifficultyTier.Brave:
        return 5;
      case DestinyActivityDifficultyTier.AlmostImpossible:
        return 6;
      case DestinyActivityDifficultyTier.Impossible:
        return 7;
      default:
        return null;
    }
  }
}