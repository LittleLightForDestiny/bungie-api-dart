import 'package:json_annotation/json_annotation.dart';

enum HostGuidedGamesPermissionLevel {
  ///None = 0
  @JsonValue(0)
  None,
  ///Beginner = 1
  @JsonValue(1)
  Beginner,
  ///Member = 2
  @JsonValue(2)
  Member,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension HostGuidedGamesPermissionLevelExtension on HostGuidedGamesPermissionLevel{
  int? get value {
    if (_$HostGuidedGamesPermissionLevelEnumMap.containsKey(this)){
      return _$HostGuidedGamesPermissionLevelEnumMap[this];
    }
    return null;
  }
}

HostGuidedGamesPermissionLevel? decodeHostGuidedGamesPermissionLevel (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$HostGuidedGamesPermissionLevelValueMap.containsKey(value)){
    return _$HostGuidedGamesPermissionLevelValueMap[value];
  }

  return HostGuidedGamesPermissionLevel.ProtectedInvalidEnumValue;
}

int? encodeHostGuidedGamesPermissionLevel (HostGuidedGamesPermissionLevel? value) {
  return value?.value;
}

const Map<HostGuidedGamesPermissionLevel, int> _$HostGuidedGamesPermissionLevelEnumMap = <HostGuidedGamesPermissionLevel, int>{
    HostGuidedGamesPermissionLevel.None:0,
    HostGuidedGamesPermissionLevel.Beginner:1,
    HostGuidedGamesPermissionLevel.Member:2,
};
const Map<int, HostGuidedGamesPermissionLevel> _$HostGuidedGamesPermissionLevelValueMap = <int, HostGuidedGamesPermissionLevel>{
    0:HostGuidedGamesPermissionLevel.None,
    1:HostGuidedGamesPermissionLevel.Beginner,
    2:HostGuidedGamesPermissionLevel.Member,
};