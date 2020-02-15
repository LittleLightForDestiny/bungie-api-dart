import 'package:json_annotation/json_annotation.dart';

enum ForumRecruitmentToneLabel {
  ///None = 0
  @JsonValue(0)
  None,
  ///FamilyFriendly = 1
  @JsonValue(1)
  FamilyFriendly,
  ///Rowdy = 2
  @JsonValue(2)
  Rowdy,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension ForumRecruitmentToneLabelExtension on ForumRecruitmentToneLabel{
  int get value {
    switch(this){
      case ForumRecruitmentToneLabel.None:
        return 0;
      case ForumRecruitmentToneLabel.FamilyFriendly:
        return 1;
      case ForumRecruitmentToneLabel.Rowdy:
        return 2;
      default:
        return null;
    }
  }
}