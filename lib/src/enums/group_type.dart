import 'package:json_annotation/json_annotation.dart';

enum GroupType {
  ///General = 0
  @JsonValue(0)
  General,
  ///Clan = 1
  @JsonValue(1)
  Clan,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension GroupTypeExtension on GroupType{
  int? get value {
    if (_$GroupTypeEnumMap.containsKey(this)){
      return _$GroupTypeEnumMap[this];
    }
    return null;
  }
}

GroupType? decodeGroupType (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$GroupTypeValueMap.containsKey(value)){
    return _$GroupTypeValueMap[value];
  }

  return GroupType.ProtectedInvalidEnumValue;
}

int? encodeGroupType (GroupType? value) {
  return value?.value;
}

const Map<GroupType, int> _$GroupTypeEnumMap = <GroupType, int>{
    GroupType.General:0,
    GroupType.Clan:1,
};
const Map<int, GroupType> _$GroupTypeValueMap = <int, GroupType>{
    0:GroupType.General,
    1:GroupType.Clan,
};