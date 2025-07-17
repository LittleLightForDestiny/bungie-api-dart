import 'package:json_annotation/json_annotation.dart';

enum FireteamFinderCodeOptionType {
  ///None = 0
  @JsonValue(0)
  None,
  ///ApplicationOnly = 1
  @JsonValue(1)
  ApplicationOnly,
  ///OnlineOnly = 2
  @JsonValue(2)
  OnlineOnly,
  ///PlayerCount = 3
  @JsonValue(3)
  PlayerCount,
  ///Title = 4
  @JsonValue(4)
  Title,
  ///Tags = 5
  @JsonValue(5)
  Tags,
  ///FinderActivityGraph = 6
  @JsonValue(6)
  FinderActivityGraph,
  ///MicrophoneRequired = 7
  @JsonValue(7)
  MicrophoneRequired,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension FireteamFinderCodeOptionTypeExtension on FireteamFinderCodeOptionType{
  int? get value {
    if (_$FireteamFinderCodeOptionTypeEnumMap.containsKey(this)){
      return _$FireteamFinderCodeOptionTypeEnumMap[this];
    }
    return null;
  }
}

FireteamFinderCodeOptionType? decodeFireteamFinderCodeOptionType (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$FireteamFinderCodeOptionTypeValueMap.containsKey(value)){
    return _$FireteamFinderCodeOptionTypeValueMap[value];
  }

  return FireteamFinderCodeOptionType.ProtectedInvalidEnumValue;
}

int? encodeFireteamFinderCodeOptionType (FireteamFinderCodeOptionType? value) {
  return value?.value;
}

const Map<FireteamFinderCodeOptionType, int> _$FireteamFinderCodeOptionTypeEnumMap = <FireteamFinderCodeOptionType, int>{
    FireteamFinderCodeOptionType.None:0,
    FireteamFinderCodeOptionType.ApplicationOnly:1,
    FireteamFinderCodeOptionType.OnlineOnly:2,
    FireteamFinderCodeOptionType.PlayerCount:3,
    FireteamFinderCodeOptionType.Title:4,
    FireteamFinderCodeOptionType.Tags:5,
    FireteamFinderCodeOptionType.FinderActivityGraph:6,
    FireteamFinderCodeOptionType.MicrophoneRequired:7,
};
const Map<int, FireteamFinderCodeOptionType> _$FireteamFinderCodeOptionTypeValueMap = <int, FireteamFinderCodeOptionType>{
    0:FireteamFinderCodeOptionType.None,
    1:FireteamFinderCodeOptionType.ApplicationOnly,
    2:FireteamFinderCodeOptionType.OnlineOnly,
    3:FireteamFinderCodeOptionType.PlayerCount,
    4:FireteamFinderCodeOptionType.Title,
    5:FireteamFinderCodeOptionType.Tags,
    6:FireteamFinderCodeOptionType.FinderActivityGraph,
    7:FireteamFinderCodeOptionType.MicrophoneRequired,
};