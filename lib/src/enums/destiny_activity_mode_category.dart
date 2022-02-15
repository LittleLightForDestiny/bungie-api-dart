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
  int? get value {
    if (_$DestinyActivityModeCategoryEnumMap.containsKey(this)){
      return _$DestinyActivityModeCategoryEnumMap[this];
    }
    return null;
  }
}

DestinyActivityModeCategory? decodeDestinyActivityModeCategory (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$DestinyActivityModeCategoryValueMap.containsKey(value)){
    return _$DestinyActivityModeCategoryValueMap[value];
  }

  return DestinyActivityModeCategory.ProtectedInvalidEnumValue;
}

int? encodeDestinyActivityModeCategory (DestinyActivityModeCategory? value) {
  return value?.value;
}

const Map<DestinyActivityModeCategory, int> _$DestinyActivityModeCategoryEnumMap = <DestinyActivityModeCategory, int>{
    DestinyActivityModeCategory.None:0,
    DestinyActivityModeCategory.PvE:1,
    DestinyActivityModeCategory.PvP:2,
    DestinyActivityModeCategory.PvECompetitive:3,
};
const Map<int, DestinyActivityModeCategory> _$DestinyActivityModeCategoryValueMap = <int, DestinyActivityModeCategory>{
    0:DestinyActivityModeCategory.None,
    1:DestinyActivityModeCategory.PvE,
    2:DestinyActivityModeCategory.PvP,
    3:DestinyActivityModeCategory.PvECompetitive,
};