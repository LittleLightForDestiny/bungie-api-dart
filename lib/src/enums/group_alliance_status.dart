import 'package:json_annotation/json_annotation.dart';

enum GroupAllianceStatus {
  ///Unallied = 0
  @JsonValue(0)
  Unallied,
  ///Parent = 1
  @JsonValue(1)
  Parent,
  ///Child = 2
  @JsonValue(2)
  Child,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension GroupAllianceStatusExtension on GroupAllianceStatus{
  int? get value {
    if (_$GroupAllianceStatusEnumMap.containsKey(this)){
      return _$GroupAllianceStatusEnumMap[this];
    }
    return null;
  }
}

GroupAllianceStatus? decodeGroupAllianceStatus (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$GroupAllianceStatusValueMap.containsKey(value)){
    return _$GroupAllianceStatusValueMap[value];
  }

  return GroupAllianceStatus.ProtectedInvalidEnumValue;
}

int? encodeGroupAllianceStatus (GroupAllianceStatus? value) {
  return value?.value;
}

const Map<GroupAllianceStatus, int> _$GroupAllianceStatusEnumMap = <GroupAllianceStatus, int>{
    GroupAllianceStatus.Unallied:0,
    GroupAllianceStatus.Parent:1,
    GroupAllianceStatus.Child:2,
};
const Map<int, GroupAllianceStatus> _$GroupAllianceStatusValueMap = <int, GroupAllianceStatus>{
    0:GroupAllianceStatus.Unallied,
    1:GroupAllianceStatus.Parent,
    2:GroupAllianceStatus.Child,
};