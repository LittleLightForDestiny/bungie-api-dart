import 'package:json_annotation/json_annotation.dart';

enum DestinyFireteamFinderApplicationState {
  ///Unknown = 0
  @JsonValue(0)
  Unknown,
  ///WaitingForApplicants = 1
  @JsonValue(1)
  WaitingForApplicants,
  ///WaitingForLobbyOwner = 2
  @JsonValue(2)
  WaitingForLobbyOwner,
  ///Accepted = 3
  @JsonValue(3)
  Accepted,
  ///Rejected = 4
  @JsonValue(4)
  Rejected,
  ///Deleted = 5
  @JsonValue(5)
  Deleted,
  ///Expired = 6
  @JsonValue(6)
  Expired,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyFireteamFinderApplicationStateExtension on DestinyFireteamFinderApplicationState{
  int? get value {
    if (_$DestinyFireteamFinderApplicationStateEnumMap.containsKey(this)){
      return _$DestinyFireteamFinderApplicationStateEnumMap[this];
    }
    return null;
  }
}

DestinyFireteamFinderApplicationState? decodeDestinyFireteamFinderApplicationState (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$DestinyFireteamFinderApplicationStateValueMap.containsKey(value)){
    return _$DestinyFireteamFinderApplicationStateValueMap[value];
  }

  return DestinyFireteamFinderApplicationState.ProtectedInvalidEnumValue;
}

int? encodeDestinyFireteamFinderApplicationState (DestinyFireteamFinderApplicationState? value) {
  return value?.value;
}

const Map<DestinyFireteamFinderApplicationState, int> _$DestinyFireteamFinderApplicationStateEnumMap = <DestinyFireteamFinderApplicationState, int>{
    DestinyFireteamFinderApplicationState.Unknown:0,
    DestinyFireteamFinderApplicationState.WaitingForApplicants:1,
    DestinyFireteamFinderApplicationState.WaitingForLobbyOwner:2,
    DestinyFireteamFinderApplicationState.Accepted:3,
    DestinyFireteamFinderApplicationState.Rejected:4,
    DestinyFireteamFinderApplicationState.Deleted:5,
    DestinyFireteamFinderApplicationState.Expired:6,
};
const Map<int, DestinyFireteamFinderApplicationState> _$DestinyFireteamFinderApplicationStateValueMap = <int, DestinyFireteamFinderApplicationState>{
    0:DestinyFireteamFinderApplicationState.Unknown,
    1:DestinyFireteamFinderApplicationState.WaitingForApplicants,
    2:DestinyFireteamFinderApplicationState.WaitingForLobbyOwner,
    3:DestinyFireteamFinderApplicationState.Accepted,
    4:DestinyFireteamFinderApplicationState.Rejected,
    5:DestinyFireteamFinderApplicationState.Deleted,
    6:DestinyFireteamFinderApplicationState.Expired,
};