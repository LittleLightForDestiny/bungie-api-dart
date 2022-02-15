import 'package:json_annotation/json_annotation.dart';

enum ApplicationStatus {
  ///None = 0
  /// No value assigned
  @JsonValue(0)
  None,
  ///Private = 1
  /// Application exists and works but will not appear in any public catalog. New applications start in this state, test applications will remain in this state.
  @JsonValue(1)
  Private,
  ///Public = 2
  /// Active applications that can appear in an catalog.
  @JsonValue(2)
  Public,
  ///Disabled = 3
  /// Application disabled by the owner. All authorizations will be treated as terminated while in this state. Owner can move back to private or public state.
  @JsonValue(3)
  Disabled,
  ///Blocked = 4
  /// Application has been blocked by Bungie. It cannot be transitioned out of this state by the owner. Authorizations are terminated when an application is in this state.
  @JsonValue(4)
  Blocked,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension ApplicationStatusExtension on ApplicationStatus{
  int? get value {
    if (_$ApplicationStatusEnumMap.containsKey(this)){
      return _$ApplicationStatusEnumMap[this];
    }
    return null;
  }
}

ApplicationStatus? decodeApplicationStatus (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$ApplicationStatusValueMap.containsKey(value)){
    return _$ApplicationStatusValueMap[value];
  }

  return ApplicationStatus.ProtectedInvalidEnumValue;
}

int? encodeApplicationStatus (ApplicationStatus? value) {
  return value?.value;
}

const Map<ApplicationStatus, int> _$ApplicationStatusEnumMap = <ApplicationStatus, int>{
    ApplicationStatus.None:0,
    ApplicationStatus.Private:1,
    ApplicationStatus.Public:2,
    ApplicationStatus.Disabled:3,
    ApplicationStatus.Blocked:4,
};
const Map<int, ApplicationStatus> _$ApplicationStatusValueMap = <int, ApplicationStatus>{
    0:ApplicationStatus.None,
    1:ApplicationStatus.Private,
    2:ApplicationStatus.Public,
    3:ApplicationStatus.Disabled,
    4:ApplicationStatus.Blocked,
};