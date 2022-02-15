import 'package:json_annotation/json_annotation.dart';

enum GroupsForMemberFilter {
  ///All = 0
  @JsonValue(0)
  All,
  ///Founded = 1
  @JsonValue(1)
  Founded,
  ///NonFounded = 2
  @JsonValue(2)
  NonFounded,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension GroupsForMemberFilterExtension on GroupsForMemberFilter{
  int? get value {
    if (_$GroupsForMemberFilterEnumMap.containsKey(this)){
      return _$GroupsForMemberFilterEnumMap[this];
    }
    return null;
  }
}

GroupsForMemberFilter? decodeGroupsForMemberFilter (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$GroupsForMemberFilterValueMap.containsKey(value)){
    return _$GroupsForMemberFilterValueMap[value];
  }

  return GroupsForMemberFilter.ProtectedInvalidEnumValue;
}

int? encodeGroupsForMemberFilter (GroupsForMemberFilter? value) {
  return value?.value;
}

const Map<GroupsForMemberFilter, int> _$GroupsForMemberFilterEnumMap = <GroupsForMemberFilter, int>{
    GroupsForMemberFilter.All:0,
    GroupsForMemberFilter.Founded:1,
    GroupsForMemberFilter.NonFounded:2,
};
const Map<int, GroupsForMemberFilter> _$GroupsForMemberFilterValueMap = <int, GroupsForMemberFilter>{
    0:GroupsForMemberFilter.All,
    1:GroupsForMemberFilter.Founded,
    2:GroupsForMemberFilter.NonFounded,
};