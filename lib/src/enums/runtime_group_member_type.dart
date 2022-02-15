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
  int? get value {
    if (_$RuntimeGroupMemberTypeEnumMap.containsKey(this)){
      return _$RuntimeGroupMemberTypeEnumMap[this];
    }
    return null;
  }
}

RuntimeGroupMemberType? decodeRuntimeGroupMemberType (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$RuntimeGroupMemberTypeValueMap.containsKey(value)){
    return _$RuntimeGroupMemberTypeValueMap[value];
  }

  return RuntimeGroupMemberType.ProtectedInvalidEnumValue;
}

int? encodeRuntimeGroupMemberType (RuntimeGroupMemberType? value) {
  return value?.value;
}

const Map<RuntimeGroupMemberType, int> _$RuntimeGroupMemberTypeEnumMap = <RuntimeGroupMemberType, int>{
    RuntimeGroupMemberType.None:0,
    RuntimeGroupMemberType.Beginner:1,
    RuntimeGroupMemberType.Member:2,
    RuntimeGroupMemberType.Admin:3,
    RuntimeGroupMemberType.ActingFounder:4,
    RuntimeGroupMemberType.Founder:5,
};
const Map<int, RuntimeGroupMemberType> _$RuntimeGroupMemberTypeValueMap = <int, RuntimeGroupMemberType>{
    0:RuntimeGroupMemberType.None,
    1:RuntimeGroupMemberType.Beginner,
    2:RuntimeGroupMemberType.Member,
    3:RuntimeGroupMemberType.Admin,
    4:RuntimeGroupMemberType.ActingFounder,
    5:RuntimeGroupMemberType.Founder,
};