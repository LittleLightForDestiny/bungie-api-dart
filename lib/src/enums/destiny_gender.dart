import 'package:json_annotation/json_annotation.dart';

enum DestinyGender {
  ///Male = 0
  @JsonValue(0)
  Male,
  ///Female = 1
  @JsonValue(1)
  Female,
  ///Unknown = 2
  @JsonValue(2)
  Unknown,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyGenderExtension on DestinyGender{
  int? get value {
    switch(this){
      case DestinyGender.Male:
        return 0;
      case DestinyGender.Female:
        return 1;
      case DestinyGender.Unknown:
        return 2;
      default:
        return null;
    }
  }
}