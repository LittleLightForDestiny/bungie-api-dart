import 'package:json_annotation/json_annotation.dart';

enum GroupMemberCountFilter {
  ///All = 0
  @JsonValue(0)
  All,
  ///OneToTen = 1
  @JsonValue(1)
  OneToTen,
  ///ElevenToOneHundred = 2
  @JsonValue(2)
  ElevenToOneHundred,
  ///GreaterThanOneHundred = 3
  @JsonValue(3)
  GreaterThanOneHundred,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension GroupMemberCountFilterExtension on GroupMemberCountFilter{
  int? get value {
    switch(this){
      case GroupMemberCountFilter.All:
        return 0;
      case GroupMemberCountFilter.OneToTen:
        return 1;
      case GroupMemberCountFilter.ElevenToOneHundred:
        return 2;
      case GroupMemberCountFilter.GreaterThanOneHundred:
        return 3;
      default:
        return null;
    }
  }
}