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
  int? get value {
    if (_$ForumRecruitmentToneLabelEnumMap.containsKey(this)){
      return _$ForumRecruitmentToneLabelEnumMap[this];
    }
    return null;
  }
}

ForumRecruitmentToneLabel? decodeForumRecruitmentToneLabel (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$ForumRecruitmentToneLabelValueMap.containsKey(value)){
    return _$ForumRecruitmentToneLabelValueMap[value];
  }

  return ForumRecruitmentToneLabel.ProtectedInvalidEnumValue;
}

int? encodeForumRecruitmentToneLabel (ForumRecruitmentToneLabel? value) {
  return value?.value;
}

const Map<ForumRecruitmentToneLabel, int> _$ForumRecruitmentToneLabelEnumMap = <ForumRecruitmentToneLabel, int>{
    ForumRecruitmentToneLabel.None:0,
    ForumRecruitmentToneLabel.FamilyFriendly:1,
    ForumRecruitmentToneLabel.Rowdy:2,
};
const Map<int, ForumRecruitmentToneLabel> _$ForumRecruitmentToneLabelValueMap = <int, ForumRecruitmentToneLabel>{
    0:ForumRecruitmentToneLabel.None,
    1:ForumRecruitmentToneLabel.FamilyFriendly,
    2:ForumRecruitmentToneLabel.Rowdy,
};