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
    if (_$FireteamPlatformInviteResultEnumMap.containsKey(this)){
      return _$FireteamPlatformInviteResultEnumMap[this];
    }
    return null;
  }
}

FireteamPlatformInviteResult? decodeFireteamPlatformInviteResult (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$FireteamPlatformInviteResultValueMap.containsKey(value)){
    return _$FireteamPlatformInviteResultValueMap[value];
  }

  return FireteamPlatformInviteResult.ProtectedInvalidEnumValue;
}

int? encodeFireteamPlatformInviteResult (FireteamPlatformInviteResult? value) {
  return value?.value;
}

const Map<FireteamPlatformInviteResult, int> _$FireteamPlatformInviteResultEnumMap = <FireteamPlatformInviteResult, int>{
    FireteamPlatformInviteResult.None:0,
    FireteamPlatformInviteResult.Success:1,
    FireteamPlatformInviteResult.AlreadyInFireteam:2,
    FireteamPlatformInviteResult.Throttled:3,
    FireteamPlatformInviteResult.ServiceError:4,
};
const Map<int, FireteamPlatformInviteResult> _$FireteamPlatformInviteResultValueMap = <int, FireteamPlatformInviteResult>{
    0:FireteamPlatformInviteResult.None,
    1:FireteamPlatformInviteResult.Success,
    2:FireteamPlatformInviteResult.AlreadyInFireteam,
    3:FireteamPlatformInviteResult.Throttled,
    4:FireteamPlatformInviteResult.ServiceError,
};