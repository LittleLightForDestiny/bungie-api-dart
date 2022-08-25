import 'package:json_annotation/json_annotation.dart';

enum FireteamPlatform {
  ///Any = 0
  @JsonValue(0)
  Any,
  ///Playstation4 = 1
  @JsonValue(1)
  Playstation4,
  ///XboxOne = 2
  @JsonValue(2)
  XboxOne,
  ///Blizzard = 3
  @JsonValue(3)
  Blizzard,
  ///Steam = 4
  @JsonValue(4)
  Steam,
  ///Stadia = 5
  @JsonValue(5)
  Stadia,
  ///Egs = 6
  @JsonValue(6)
  Egs,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension FireteamPlatformExtension on FireteamPlatform{
  int? get value {
    if (_$FireteamPlatformEnumMap.containsKey(this)){
      return _$FireteamPlatformEnumMap[this];
    }
    return null;
  }
}

FireteamPlatform? decodeFireteamPlatform (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$FireteamPlatformValueMap.containsKey(value)){
    return _$FireteamPlatformValueMap[value];
  }

  return FireteamPlatform.ProtectedInvalidEnumValue;
}

int? encodeFireteamPlatform (FireteamPlatform? value) {
  return value?.value;
}

const Map<FireteamPlatform, int> _$FireteamPlatformEnumMap = <FireteamPlatform, int>{
    FireteamPlatform.Any:0,
    FireteamPlatform.Playstation4:1,
    FireteamPlatform.XboxOne:2,
    FireteamPlatform.Blizzard:3,
    FireteamPlatform.Steam:4,
    FireteamPlatform.Stadia:5,
    FireteamPlatform.Egs:6,
};
const Map<int, FireteamPlatform> _$FireteamPlatformValueMap = <int, FireteamPlatform>{
    0:FireteamPlatform.Any,
    1:FireteamPlatform.Playstation4,
    2:FireteamPlatform.XboxOne,
    3:FireteamPlatform.Blizzard,
    4:FireteamPlatform.Steam,
    5:FireteamPlatform.Stadia,
    6:FireteamPlatform.Egs,
};