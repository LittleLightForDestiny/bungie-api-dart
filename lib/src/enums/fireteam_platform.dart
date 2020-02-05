import 'package:json_annotation/json_annotation.dart';

enum FireteamPlatform {
  ///Unknown = 0
  @JsonValue(0)
  Unknown,
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
}

extension FireteamPlatformExtension on FireteamPlatform{
  int get value {
    switch(this){
      case FireteamPlatform.Unknown:
        return 0;
      case FireteamPlatform.Playstation4:
        return 1;
      case FireteamPlatform.XboxOne:
        return 2;
      case FireteamPlatform.Blizzard:
        return 3;
      case FireteamPlatform.Steam:
        return 4;
      default:
        return null;
    }
  }
}