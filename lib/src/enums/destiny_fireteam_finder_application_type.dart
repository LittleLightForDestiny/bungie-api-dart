import 'package:json_annotation/json_annotation.dart';

enum DestinyFireteamFinderApplicationType {
  ///Unknown = 0
  @JsonValue(0)
  Unknown,
  ///Creator = 1
  @JsonValue(1)
  Creator,
  ///Search = 2
  @JsonValue(2)
  Search,
  ///Invite = 3
  @JsonValue(3)
  Invite,
  ///Friend = 4
  @JsonValue(4)
  Friend,
  ///Encounter = 5
  @JsonValue(5)
  Encounter,
  ///Public = 6
  @JsonValue(6)
  Public,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyFireteamFinderApplicationTypeExtension on DestinyFireteamFinderApplicationType{
  int? get value {
    if (_$DestinyFireteamFinderApplicationTypeEnumMap.containsKey(this)){
      return _$DestinyFireteamFinderApplicationTypeEnumMap[this];
    }
    return null;
  }
}

DestinyFireteamFinderApplicationType? decodeDestinyFireteamFinderApplicationType (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$DestinyFireteamFinderApplicationTypeValueMap.containsKey(value)){
    return _$DestinyFireteamFinderApplicationTypeValueMap[value];
  }

  return DestinyFireteamFinderApplicationType.ProtectedInvalidEnumValue;
}

int? encodeDestinyFireteamFinderApplicationType (DestinyFireteamFinderApplicationType? value) {
  return value?.value;
}

const Map<DestinyFireteamFinderApplicationType, int> _$DestinyFireteamFinderApplicationTypeEnumMap = <DestinyFireteamFinderApplicationType, int>{
    DestinyFireteamFinderApplicationType.Unknown:0,
    DestinyFireteamFinderApplicationType.Creator:1,
    DestinyFireteamFinderApplicationType.Search:2,
    DestinyFireteamFinderApplicationType.Invite:3,
    DestinyFireteamFinderApplicationType.Friend:4,
    DestinyFireteamFinderApplicationType.Encounter:5,
    DestinyFireteamFinderApplicationType.Public:6,
};
const Map<int, DestinyFireteamFinderApplicationType> _$DestinyFireteamFinderApplicationTypeValueMap = <int, DestinyFireteamFinderApplicationType>{
    0:DestinyFireteamFinderApplicationType.Unknown,
    1:DestinyFireteamFinderApplicationType.Creator,
    2:DestinyFireteamFinderApplicationType.Search,
    3:DestinyFireteamFinderApplicationType.Invite,
    4:DestinyFireteamFinderApplicationType.Friend,
    5:DestinyFireteamFinderApplicationType.Encounter,
    6:DestinyFireteamFinderApplicationType.Public,
};