import 'package:json_annotation/json_annotation.dart';

enum GroupHomepage {
  ///Wall = 0
  @JsonValue(0)
  Wall,
  ///Forum = 1
  @JsonValue(1)
  Forum,
  ///AllianceForum = 2
  @JsonValue(2)
  AllianceForum,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension GroupHomepageExtension on GroupHomepage{
  int? get value {
    if (_$GroupHomepageEnumMap.containsKey(this)){
      return _$GroupHomepageEnumMap[this];
    }
    return null;
  }
}

GroupHomepage? decodeGroupHomepage (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$GroupHomepageValueMap.containsKey(value)){
    return _$GroupHomepageValueMap[value];
  }

  return GroupHomepage.ProtectedInvalidEnumValue;
}

int? encodeGroupHomepage (GroupHomepage? value) {
  return value?.value;
}

const Map<GroupHomepage, int> _$GroupHomepageEnumMap = <GroupHomepage, int>{
    GroupHomepage.Wall:0,
    GroupHomepage.Forum:1,
    GroupHomepage.AllianceForum:2,
};
const Map<int, GroupHomepage> _$GroupHomepageValueMap = <int, GroupHomepage>{
    0:GroupHomepage.Wall,
    1:GroupHomepage.Forum,
    2:GroupHomepage.AllianceForum,
};