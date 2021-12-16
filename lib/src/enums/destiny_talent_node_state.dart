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
    switch(this){
      case DestinyTalentNodeState.Invalid:
        return 0;
      case DestinyTalentNodeState.CanUpgrade:
        return 1;
      case DestinyTalentNodeState.NoPoints:
        return 2;
      case DestinyTalentNodeState.NoPrerequisites:
        return 3;
      case DestinyTalentNodeState.NoSteps:
        return 4;
      case DestinyTalentNodeState.NoUnlock:
        return 5;
      case DestinyTalentNodeState.NoMaterial:
        return 6;
      case DestinyTalentNodeState.NoGridLevel:
        return 7;
      case DestinyTalentNodeState.SwappingLocked:
        return 8;
      case DestinyTalentNodeState.MustSwap:
        return 9;
      case DestinyTalentNodeState.Complete:
        return 10;
      case DestinyTalentNodeState.Unknown:
        return 11;
      case DestinyTalentNodeState.CreationOnly:
        return 12;
      case DestinyTalentNodeState.Hidden:
        return 13;
      default:
        return null;
    }
  }
}