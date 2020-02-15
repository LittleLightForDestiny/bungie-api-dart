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
  int get value {
    switch(this){
      case ForumRecruitmentIntensityLabel.None:
        return 0;
      case ForumRecruitmentIntensityLabel.Casual:
        return 1;
      case ForumRecruitmentIntensityLabel.Professional:
        return 2;
      default:
        return null;
    }
  }
}