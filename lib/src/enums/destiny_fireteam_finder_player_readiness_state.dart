import 'package:json_annotation/json_annotation.dart';

enum DestinyFireteamFinderPlayerReadinessState {
  ///Unknown = 0
  @JsonValue(0)
  Unknown,
  ///Reserved = 1
  @JsonValue(1)
  Reserved,
  ///Disconnected = 2
  @JsonValue(2)
  Disconnected,
  ///InLobbyUnready = 3
  @JsonValue(3)
  InLobbyUnready,
  ///InLobbyReady = 4
  @JsonValue(4)
  InLobbyReady,
  ///Summoned = 5
  @JsonValue(5)
  Summoned,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyFireteamFinderPlayerReadinessStateExtension on DestinyFireteamFinderPlayerReadinessState{
  int? get value {
    if (_$DestinyFireteamFinderPlayerReadinessStateEnumMap.containsKey(this)){
      return _$DestinyFireteamFinderPlayerReadinessStateEnumMap[this];
    }
    return null;
  }
}

DestinyFireteamFinderPlayerReadinessState? decodeDestinyFireteamFinderPlayerReadinessState (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$DestinyFireteamFinderPlayerReadinessStateValueMap.containsKey(value)){
    return _$DestinyFireteamFinderPlayerReadinessStateValueMap[value];
  }

  return DestinyFireteamFinderPlayerReadinessState.ProtectedInvalidEnumValue;
}

int? encodeDestinyFireteamFinderPlayerReadinessState (DestinyFireteamFinderPlayerReadinessState? value) {
  return value?.value;
}

const Map<DestinyFireteamFinderPlayerReadinessState, int> _$DestinyFireteamFinderPlayerReadinessStateEnumMap = <DestinyFireteamFinderPlayerReadinessState, int>{
    DestinyFireteamFinderPlayerReadinessState.Unknown:0,
    DestinyFireteamFinderPlayerReadinessState.Reserved:1,
    DestinyFireteamFinderPlayerReadinessState.Disconnected:2,
    DestinyFireteamFinderPlayerReadinessState.InLobbyUnready:3,
    DestinyFireteamFinderPlayerReadinessState.InLobbyReady:4,
    DestinyFireteamFinderPlayerReadinessState.Summoned:5,
};
const Map<int, DestinyFireteamFinderPlayerReadinessState> _$DestinyFireteamFinderPlayerReadinessStateValueMap = <int, DestinyFireteamFinderPlayerReadinessState>{
    0:DestinyFireteamFinderPlayerReadinessState.Unknown,
    1:DestinyFireteamFinderPlayerReadinessState.Reserved,
    2:DestinyFireteamFinderPlayerReadinessState.Disconnected,
    3:DestinyFireteamFinderPlayerReadinessState.InLobbyUnready,
    4:DestinyFireteamFinderPlayerReadinessState.InLobbyReady,
    5:DestinyFireteamFinderPlayerReadinessState.Summoned,
};