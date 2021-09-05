import 'package:json_annotation/json_annotation.dart';

enum FireteamPlatformInviteResult {
  ///None = 0
  @JsonValue(0)
  None,
  ///Success = 1
  @JsonValue(1)
  Success,
  ///AlreadyInFireteam = 2
  @JsonValue(2)
  AlreadyInFireteam,
  ///Throttled = 3
  @JsonValue(3)
  Throttled,
  ///ServiceError = 4
  @JsonValue(4)
  ServiceError,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension FireteamPlatformInviteResultExtension on FireteamPlatformInviteResult{
  int? get value {
    switch(this){
      case FireteamPlatformInviteResult.None:
        return 0;
      case FireteamPlatformInviteResult.Success:
        return 1;
      case FireteamPlatformInviteResult.AlreadyInFireteam:
        return 2;
      case FireteamPlatformInviteResult.Throttled:
        return 3;
      case FireteamPlatformInviteResult.ServiceError:
        return 4;
      default:
        return null;
    }
  }
}