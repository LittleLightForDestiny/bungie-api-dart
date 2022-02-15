import 'package:json_annotation/json_annotation.dart';

enum FireteamPublicSearchOption {
  ///PublicAndPrivate = 0
  @JsonValue(0)
  PublicAndPrivate,
  ///PublicOnly = 1
  @JsonValue(1)
  PublicOnly,
  ///PrivateOnly = 2
  @JsonValue(2)
  PrivateOnly,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension FireteamPublicSearchOptionExtension on FireteamPublicSearchOption{
  int? get value {
    if (_$FireteamPublicSearchOptionEnumMap.containsKey(this)){
      return _$FireteamPublicSearchOptionEnumMap[this];
    }
    return null;
  }
}

FireteamPublicSearchOption? decodeFireteamPublicSearchOption (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$FireteamPublicSearchOptionValueMap.containsKey(value)){
    return _$FireteamPublicSearchOptionValueMap[value];
  }

  return FireteamPublicSearchOption.ProtectedInvalidEnumValue;
}

int? encodeFireteamPublicSearchOption (FireteamPublicSearchOption? value) {
  return value?.value;
}

const Map<FireteamPublicSearchOption, int> _$FireteamPublicSearchOptionEnumMap = <FireteamPublicSearchOption, int>{
    FireteamPublicSearchOption.PublicAndPrivate:0,
    FireteamPublicSearchOption.PublicOnly:1,
    FireteamPublicSearchOption.PrivateOnly:2,
};
const Map<int, FireteamPublicSearchOption> _$FireteamPublicSearchOptionValueMap = <int, FireteamPublicSearchOption>{
    0:FireteamPublicSearchOption.PublicAndPrivate,
    1:FireteamPublicSearchOption.PublicOnly,
    2:FireteamPublicSearchOption.PrivateOnly,
};