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
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension FireteamPlatformExtension on FireteamPlatform{
  int? get value {
    switch(this){
      case FireteamPlatform.Any:
        return 0;
      case FireteamPlatform.Playstation4:
        return 1;
      case FireteamPlatform.XboxOne:
        return 2;
      case FireteamPlatform.Blizzard:
        return 3;
      case FireteamPlatform.Steam:
        return 4;
      case FireteamPlatform.Stadia:
        return 5;
      default:
        return null;
    }
  }
}