import 'package:json_annotation/json_annotation.dart';

enum RuntimeGroupMemberType {
  ///None = 0
  @JsonValue(0)
  None,
  ///Beginner = 1
  @JsonValue(1)
  Beginner,
  ///Member = 2
  @JsonValue(2)
  Member,
  ///Admin = 3
  @JsonValue(3)
  Admin,
  ///ActingFounder = 4
  @JsonValue(4)
  ActingFounder,
  ///Founder = 5
  @JsonValue(5)
  Founder,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension RuntimeGroupMemberTypeExtension on RuntimeGroupMemberType{
  int get value {
    switch(this){
      case RuntimeGroupMemberType.None:
        return 0;
      case RuntimeGroupMemberType.Beginner:
        return 1;
      case RuntimeGroupMemberType.Member:
        return 2;
      case RuntimeGroupMemberType.Admin:
        return 3;
      case RuntimeGroupMemberType.ActingFounder:
        return 4;
      case RuntimeGroupMemberType.Founder:
        return 5;
      default:
        return null;
    }
  }
}