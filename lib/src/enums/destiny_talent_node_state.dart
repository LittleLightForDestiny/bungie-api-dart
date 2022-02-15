import 'package:json_annotation/json_annotation.dart';

enum DestinyTalentNodeState {
  ///Invalid = 0
  @JsonValue(0)
  Invalid,
  ///CanUpgrade = 1
  @JsonValue(1)
  CanUpgrade,
  ///NoPoints = 2
  @JsonValue(2)
  NoPoints,
  ///NoPrerequisites = 3
  @JsonValue(3)
  NoPrerequisites,
  ///NoSteps = 4
  @JsonValue(4)
  NoSteps,
  ///NoUnlock = 5
  @JsonValue(5)
  NoUnlock,
  ///NoMaterial = 6
  @JsonValue(6)
  NoMaterial,
  ///NoGridLevel = 7
  @JsonValue(7)
  NoGridLevel,
  ///SwappingLocked = 8
  @JsonValue(8)
  SwappingLocked,
  ///MustSwap = 9
  @JsonValue(9)
  MustSwap,
  ///Complete = 10
  @JsonValue(10)
  Complete,
  ///Unknown = 11
  @JsonValue(11)
  Unknown,
  ///CreationOnly = 12
  @JsonValue(12)
  CreationOnly,
  ///Hidden = 13
  @JsonValue(13)
  Hidden,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyTalentNodeStateExtension on DestinyTalentNodeState{
  int? get value {
    if (_$DestinyTalentNodeStateEnumMap.containsKey(this)){
      return _$DestinyTalentNodeStateEnumMap[this];
    }
    return null;
  }
}

DestinyTalentNodeState? decodeDestinyTalentNodeState (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$DestinyTalentNodeStateValueMap.containsKey(value)){
    return _$DestinyTalentNodeStateValueMap[value];
  }

  return DestinyTalentNodeState.ProtectedInvalidEnumValue;
}

int? encodeDestinyTalentNodeState (DestinyTalentNodeState? value) {
  return value?.value;
}

const Map<DestinyTalentNodeState, int> _$DestinyTalentNodeStateEnumMap = <DestinyTalentNodeState, int>{
    DestinyTalentNodeState.Invalid:0,
    DestinyTalentNodeState.CanUpgrade:1,
    DestinyTalentNodeState.NoPoints:2,
    DestinyTalentNodeState.NoPrerequisites:3,
    DestinyTalentNodeState.NoSteps:4,
    DestinyTalentNodeState.NoUnlock:5,
    DestinyTalentNodeState.NoMaterial:6,
    DestinyTalentNodeState.NoGridLevel:7,
    DestinyTalentNodeState.SwappingLocked:8,
    DestinyTalentNodeState.MustSwap:9,
    DestinyTalentNodeState.Complete:10,
    DestinyTalentNodeState.Unknown:11,
    DestinyTalentNodeState.CreationOnly:12,
    DestinyTalentNodeState.Hidden:13,
};
const Map<int, DestinyTalentNodeState> _$DestinyTalentNodeStateValueMap = <int, DestinyTalentNodeState>{
    0:DestinyTalentNodeState.Invalid,
    1:DestinyTalentNodeState.CanUpgrade,
    2:DestinyTalentNodeState.NoPoints,
    3:DestinyTalentNodeState.NoPrerequisites,
    4:DestinyTalentNodeState.NoSteps,
    5:DestinyTalentNodeState.NoUnlock,
    6:DestinyTalentNodeState.NoMaterial,
    7:DestinyTalentNodeState.NoGridLevel,
    8:DestinyTalentNodeState.SwappingLocked,
    9:DestinyTalentNodeState.MustSwap,
    10:DestinyTalentNodeState.Complete,
    11:DestinyTalentNodeState.Unknown,
    12:DestinyTalentNodeState.CreationOnly,
    13:DestinyTalentNodeState.Hidden,
};