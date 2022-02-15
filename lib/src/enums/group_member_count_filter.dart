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
    if (_$GroupMemberCountFilterEnumMap.containsKey(this)){
      return _$GroupMemberCountFilterEnumMap[this];
    }
    return null;
  }
}

GroupMemberCountFilter? decodeGroupMemberCountFilter (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$GroupMemberCountFilterValueMap.containsKey(value)){
    return _$GroupMemberCountFilterValueMap[value];
  }

  return GroupMemberCountFilter.ProtectedInvalidEnumValue;
}

int? encodeGroupMemberCountFilter (GroupMemberCountFilter? value) {
  return value?.value;
}

const Map<GroupMemberCountFilter, int> _$GroupMemberCountFilterEnumMap = <GroupMemberCountFilter, int>{
    GroupMemberCountFilter.All:0,
    GroupMemberCountFilter.OneToTen:1,
    GroupMemberCountFilter.ElevenToOneHundred:2,
    GroupMemberCountFilter.GreaterThanOneHundred:3,
};
const Map<int, GroupMemberCountFilter> _$GroupMemberCountFilterValueMap = <int, GroupMemberCountFilter>{
    0:GroupMemberCountFilter.All,
    1:GroupMemberCountFilter.OneToTen,
    2:GroupMemberCountFilter.ElevenToOneHundred,
    3:GroupMemberCountFilter.GreaterThanOneHundred,
};