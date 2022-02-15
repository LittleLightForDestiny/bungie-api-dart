import 'package:json_annotation/json_annotation.dart';

enum GroupApplicationResolveState {
  ///Unresolved = 0
  @JsonValue(0)
  Unresolved,
  ///Accepted = 1
  @JsonValue(1)
  Accepted,
  ///Denied = 2
  @JsonValue(2)
  Denied,
  ///Rescinded = 3
  @JsonValue(3)
  Rescinded,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension GroupApplicationResolveStateExtension on GroupApplicationResolveState{
  int? get value {
    if (_$GroupApplicationResolveStateEnumMap.containsKey(this)){
      return _$GroupApplicationResolveStateEnumMap[this];
    }
    return null;
  }
}

GroupApplicationResolveState? decodeGroupApplicationResolveState (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$GroupApplicationResolveStateValueMap.containsKey(value)){
    return _$GroupApplicationResolveStateValueMap[value];
  }

  return GroupApplicationResolveState.ProtectedInvalidEnumValue;
}

int? encodeGroupApplicationResolveState (GroupApplicationResolveState? value) {
  return value?.value;
}

const Map<GroupApplicationResolveState, int> _$GroupApplicationResolveStateEnumMap = <GroupApplicationResolveState, int>{
    GroupApplicationResolveState.Unresolved:0,
    GroupApplicationResolveState.Accepted:1,
    GroupApplicationResolveState.Denied:2,
    GroupApplicationResolveState.Rescinded:3,
};
const Map<int, GroupApplicationResolveState> _$GroupApplicationResolveStateValueMap = <int, GroupApplicationResolveState>{
    0:GroupApplicationResolveState.Unresolved,
    1:GroupApplicationResolveState.Accepted,
    2:GroupApplicationResolveState.Denied,
    3:GroupApplicationResolveState.Rescinded,
};