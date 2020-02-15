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
  int get value {
    switch(this){
      case GroupPotentialMemberStatus.None:
        return 0;
      case GroupPotentialMemberStatus.Applicant:
        return 1;
      case GroupPotentialMemberStatus.Invitee:
        return 2;
      default:
        return null;
    }
  }
}