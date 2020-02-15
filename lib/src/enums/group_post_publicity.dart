import 'package:json_annotation/json_annotation.dart';

enum GroupPostPublicity {
  ///Public = 0
  @JsonValue(0)
  Public,
  ///Alliance = 1
  @JsonValue(1)
  Alliance,
  ///Private = 2
  @JsonValue(2)
  Private,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension GroupPostPublicityExtension on GroupPostPublicity{
  int get value {
    switch(this){
      case GroupPostPublicity.Public:
        return 0;
      case GroupPostPublicity.Alliance:
        return 1;
      case GroupPostPublicity.Private:
        return 2;
      default:
        return null;
    }
  }
}