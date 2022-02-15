import 'package:json_annotation/json_annotation.dart';

enum GroupPotentialMemberStatus {
  ///None = 0
  @JsonValue(0)
  None,
  ///Applicant = 1
  @JsonValue(1)
  Applicant,
  ///Invitee = 2
  @JsonValue(2)
  Invitee,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension GroupPotentialMemberStatusExtension on GroupPotentialMemberStatus{
  int? get value {
    if (_$GroupPotentialMemberStatusEnumMap.containsKey(this)){
      return _$GroupPotentialMemberStatusEnumMap[this];
    }
    return null;
  }
}

GroupPotentialMemberStatus? decodeGroupPotentialMemberStatus (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$GroupPotentialMemberStatusValueMap.containsKey(value)){
    return _$GroupPotentialMemberStatusValueMap[value];
  }

  return GroupPotentialMemberStatus.ProtectedInvalidEnumValue;
}

int? encodeGroupPotentialMemberStatus (GroupPotentialMemberStatus? value) {
  return value?.value;
}

const Map<GroupPotentialMemberStatus, int> _$GroupPotentialMemberStatusEnumMap = <GroupPotentialMemberStatus, int>{
    GroupPotentialMemberStatus.None:0,
    GroupPotentialMemberStatus.Applicant:1,
    GroupPotentialMemberStatus.Invitee:2,
};
const Map<int, GroupPotentialMemberStatus> _$GroupPotentialMemberStatusValueMap = <int, GroupPotentialMemberStatus>{
    0:GroupPotentialMemberStatus.None,
    1:GroupPotentialMemberStatus.Applicant,
    2:GroupPotentialMemberStatus.Invitee,
};