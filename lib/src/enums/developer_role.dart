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
  int get value {
    switch(this){
      case DeveloperRole.None:
        return 0;
      case DeveloperRole.Owner:
        return 1;
      case DeveloperRole.TeamMember:
        return 2;
      default:
        return null;
    }
  }
}