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
  int? get value {
    if (_$GroupPostPublicityEnumMap.containsKey(this)){
      return _$GroupPostPublicityEnumMap[this];
    }
    return null;
  }
}

GroupPostPublicity? decodeGroupPostPublicity (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$GroupPostPublicityValueMap.containsKey(value)){
    return _$GroupPostPublicityValueMap[value];
  }

  return GroupPostPublicity.ProtectedInvalidEnumValue;
}

int? encodeGroupPostPublicity (GroupPostPublicity? value) {
  return value?.value;
}

const Map<GroupPostPublicity, int> _$GroupPostPublicityEnumMap = <GroupPostPublicity, int>{
    GroupPostPublicity.Public:0,
    GroupPostPublicity.Alliance:1,
    GroupPostPublicity.Private:2,
};
const Map<int, GroupPostPublicity> _$GroupPostPublicityValueMap = <int, GroupPostPublicity>{
    0:GroupPostPublicity.Public,
    1:GroupPostPublicity.Alliance,
    2:GroupPostPublicity.Private,
};