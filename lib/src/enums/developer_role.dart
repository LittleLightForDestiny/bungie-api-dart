import 'package:json_annotation/json_annotation.dart';

enum DeveloperRole {
  ///None = 0
  @JsonValue(0)
  None,
  ///Owner = 1
  @JsonValue(1)
  Owner,
  ///TeamMember = 2
  @JsonValue(2)
  TeamMember,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DeveloperRoleExtension on DeveloperRole{
  int? get value {
    if (_$DeveloperRoleEnumMap.containsKey(this)){
      return _$DeveloperRoleEnumMap[this];
    }
    return null;
  }
}

DeveloperRole? decodeDeveloperRole (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$DeveloperRoleValueMap.containsKey(value)){
    return _$DeveloperRoleValueMap[value];
  }

  return DeveloperRole.ProtectedInvalidEnumValue;
}

int? encodeDeveloperRole (DeveloperRole? value) {
  return value?.value;
}

const Map<DeveloperRole, int> _$DeveloperRoleEnumMap = <DeveloperRole, int>{
    DeveloperRole.None:0,
    DeveloperRole.Owner:1,
    DeveloperRole.TeamMember:2,
};
const Map<int, DeveloperRole> _$DeveloperRoleValueMap = <int, DeveloperRole>{
    0:DeveloperRole.None,
    1:DeveloperRole.Owner,
    2:DeveloperRole.TeamMember,
};