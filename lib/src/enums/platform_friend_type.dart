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
    switch(this){
      case PlatformFriendType.Unknown:
        return 0;
      case PlatformFriendType.Xbox:
        return 1;
      case PlatformFriendType.PSN:
        return 2;
      case PlatformFriendType.Steam:
        return 3;
      default:
        return null;
    }
  }
}