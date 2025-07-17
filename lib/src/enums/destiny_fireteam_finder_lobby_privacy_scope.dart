import 'package:json_annotation/json_annotation.dart';

enum DestinyFireteamFinderLobbyPrivacyScope {
  ///Unknown = 0
  @JsonValue(0)
  Unknown,
  ///Open = 1
  @JsonValue(1)
  Open,
  ///Applications = 2
  @JsonValue(2)
  Applications,
  ///Clan = 3
  @JsonValue(3)
  Clan,
  ///Friends = 4
  @JsonValue(4)
  Friends,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyFireteamFinderLobbyPrivacyScopeExtension on DestinyFireteamFinderLobbyPrivacyScope{
  int? get value {
    if (_$DestinyFireteamFinderLobbyPrivacyScopeEnumMap.containsKey(this)){
      return _$DestinyFireteamFinderLobbyPrivacyScopeEnumMap[this];
    }
    return null;
  }
}

DestinyFireteamFinderLobbyPrivacyScope? decodeDestinyFireteamFinderLobbyPrivacyScope (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$DestinyFireteamFinderLobbyPrivacyScopeValueMap.containsKey(value)){
    return _$DestinyFireteamFinderLobbyPrivacyScopeValueMap[value];
  }

  return DestinyFireteamFinderLobbyPrivacyScope.ProtectedInvalidEnumValue;
}

int? encodeDestinyFireteamFinderLobbyPrivacyScope (DestinyFireteamFinderLobbyPrivacyScope? value) {
  return value?.value;
}

const Map<DestinyFireteamFinderLobbyPrivacyScope, int> _$DestinyFireteamFinderLobbyPrivacyScopeEnumMap = <DestinyFireteamFinderLobbyPrivacyScope, int>{
    DestinyFireteamFinderLobbyPrivacyScope.Unknown:0,
    DestinyFireteamFinderLobbyPrivacyScope.Open:1,
    DestinyFireteamFinderLobbyPrivacyScope.Applications:2,
    DestinyFireteamFinderLobbyPrivacyScope.Clan:3,
    DestinyFireteamFinderLobbyPrivacyScope.Friends:4,
};
const Map<int, DestinyFireteamFinderLobbyPrivacyScope> _$DestinyFireteamFinderLobbyPrivacyScopeValueMap = <int, DestinyFireteamFinderLobbyPrivacyScope>{
    0:DestinyFireteamFinderLobbyPrivacyScope.Unknown,
    1:DestinyFireteamFinderLobbyPrivacyScope.Open,
    2:DestinyFireteamFinderLobbyPrivacyScope.Applications,
    3:DestinyFireteamFinderLobbyPrivacyScope.Clan,
    4:DestinyFireteamFinderLobbyPrivacyScope.Friends,
};