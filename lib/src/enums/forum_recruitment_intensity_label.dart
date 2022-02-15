import 'package:json_annotation/json_annotation.dart';

enum ForumRecruitmentIntensityLabel {
  ///None = 0
  @JsonValue(0)
  None,
  ///Casual = 1
  @JsonValue(1)
  Casual,
  ///Professional = 2
  @JsonValue(2)
  Professional,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension ForumRecruitmentIntensityLabelExtension on ForumRecruitmentIntensityLabel{
  int? get value {
    if (_$ForumRecruitmentIntensityLabelEnumMap.containsKey(this)){
      return _$ForumRecruitmentIntensityLabelEnumMap[this];
    }
    return null;
  }
}

ForumRecruitmentIntensityLabel? decodeForumRecruitmentIntensityLabel (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$ForumRecruitmentIntensityLabelValueMap.containsKey(value)){
    return _$ForumRecruitmentIntensityLabelValueMap[value];
  }

  return ForumRecruitmentIntensityLabel.ProtectedInvalidEnumValue;
}

int? encodeForumRecruitmentIntensityLabel (ForumRecruitmentIntensityLabel? value) {
  return value?.value;
}

const Map<ForumRecruitmentIntensityLabel, int> _$ForumRecruitmentIntensityLabelEnumMap = <ForumRecruitmentIntensityLabel, int>{
    ForumRecruitmentIntensityLabel.None:0,
    ForumRecruitmentIntensityLabel.Casual:1,
    ForumRecruitmentIntensityLabel.Professional:2,
};
const Map<int, ForumRecruitmentIntensityLabel> _$ForumRecruitmentIntensityLabelValueMap = <int, ForumRecruitmentIntensityLabel>{
    0:ForumRecruitmentIntensityLabel.None,
    1:ForumRecruitmentIntensityLabel.Casual,
    2:ForumRecruitmentIntensityLabel.Professional,
};