import 'package:json_annotation/json_annotation.dart';

enum DestinyActivityModeCategory {
  ///None = 0
  /// Activities that are neither PVP nor PVE, such as social activities.
  @JsonValue(0)
  None,
  ///PvE = 1
  /// PvE activities, where you shoot aliens in the face.
  @JsonValue(1)
  PvE,
  ///PvP = 2
  /// PvP activities, where you shoot your &quot;friends&quot;.
  @JsonValue(2)
  PvP,
  ///PvECompetitive = 3
  /// PVE competitive activities, where you shoot whoever you want whenever you want. Or run around collecting small glowing triangles.
  @JsonValue(3)
  PvECompetitive,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyActivityModeCategoryExtension on DestinyActivityModeCategory{
  int get value {
    switch(this){
      case DestinyActivityModeCategory.None:
        return 0;
      case DestinyActivityModeCategory.PvE:
        return 1;
      case DestinyActivityModeCategory.PvP:
        return 2;
      case DestinyActivityModeCategory.PvECompetitive:
        return 3;
      default:
        return null;
    }
  }
}