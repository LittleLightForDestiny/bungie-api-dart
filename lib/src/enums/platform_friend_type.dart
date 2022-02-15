import 'package:json_annotation/json_annotation.dart';

enum PlatformFriendType {
  ///Unknown = 0
  @JsonValue(0)
  Unknown,
  ///Xbox = 1
  @JsonValue(1)
  Xbox,
  ///PSN = 2
  @JsonValue(2)
  PSN,
  ///Steam = 3
  @JsonValue(3)
  Steam,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension PlatformFriendTypeExtension on PlatformFriendType{
  int? get value {
    if (_$PlatformFriendTypeEnumMap.containsKey(this)){
      return _$PlatformFriendTypeEnumMap[this];
    }
    return null;
  }
}

PlatformFriendType? decodePlatformFriendType (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$PlatformFriendTypeValueMap.containsKey(value)){
    return _$PlatformFriendTypeValueMap[value];
  }

  return PlatformFriendType.ProtectedInvalidEnumValue;
}

int? encodePlatformFriendType (PlatformFriendType? value) {
  return value?.value;
}

const Map<PlatformFriendType, int> _$PlatformFriendTypeEnumMap = <PlatformFriendType, int>{
    PlatformFriendType.Unknown:0,
    PlatformFriendType.Xbox:1,
    PlatformFriendType.PSN:2,
    PlatformFriendType.Steam:3,
};
const Map<int, PlatformFriendType> _$PlatformFriendTypeValueMap = <int, PlatformFriendType>{
    0:PlatformFriendType.Unknown,
    1:PlatformFriendType.Xbox,
    2:PlatformFriendType.PSN,
    3:PlatformFriendType.Steam,
};