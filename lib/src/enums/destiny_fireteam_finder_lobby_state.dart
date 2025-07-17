import 'package:json_annotation/json_annotation.dart';

enum DestinyFireteamFinderLobbyState {
  ///Unknown = 0
  @JsonValue(0)
  Unknown,
  ///Inactive = 1
  @JsonValue(1)
  Inactive,
  ///Active = 2
  @JsonValue(2)
  Active,
  ///Expired = 3
  @JsonValue(3)
  Expired,
  ///Closed = 4
  @JsonValue(4)
  Closed,
  ///Canceled = 5
  @JsonValue(5)
  Canceled,
  ///Deleted = 6
  @JsonValue(6)
  Deleted,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyFireteamFinderLobbyStateExtension on DestinyFireteamFinderLobbyState{
  int? get value {
    if (_$DestinyFireteamFinderLobbyStateEnumMap.containsKey(this)){
      return _$DestinyFireteamFinderLobbyStateEnumMap[this];
    }
    return null;
  }
}

DestinyFireteamFinderLobbyState? decodeDestinyFireteamFinderLobbyState (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$DestinyFireteamFinderLobbyStateValueMap.containsKey(value)){
    return _$DestinyFireteamFinderLobbyStateValueMap[value];
  }

  return DestinyFireteamFinderLobbyState.ProtectedInvalidEnumValue;
}

int? encodeDestinyFireteamFinderLobbyState (DestinyFireteamFinderLobbyState? value) {
  return value?.value;
}

const Map<DestinyFireteamFinderLobbyState, int> _$DestinyFireteamFinderLobbyStateEnumMap = <DestinyFireteamFinderLobbyState, int>{
    DestinyFireteamFinderLobbyState.Unknown:0,
    DestinyFireteamFinderLobbyState.Inactive:1,
    DestinyFireteamFinderLobbyState.Active:2,
    DestinyFireteamFinderLobbyState.Expired:3,
    DestinyFireteamFinderLobbyState.Closed:4,
    DestinyFireteamFinderLobbyState.Canceled:5,
    DestinyFireteamFinderLobbyState.Deleted:6,
};
const Map<int, DestinyFireteamFinderLobbyState> _$DestinyFireteamFinderLobbyStateValueMap = <int, DestinyFireteamFinderLobbyState>{
    0:DestinyFireteamFinderLobbyState.Unknown,
    1:DestinyFireteamFinderLobbyState.Inactive,
    2:DestinyFireteamFinderLobbyState.Active,
    3:DestinyFireteamFinderLobbyState.Expired,
    4:DestinyFireteamFinderLobbyState.Closed,
    5:DestinyFireteamFinderLobbyState.Canceled,
    6:DestinyFireteamFinderLobbyState.Deleted,
};