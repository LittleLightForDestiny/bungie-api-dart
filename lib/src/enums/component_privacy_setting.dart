import 'package:json_annotation/json_annotation.dart';

enum ComponentPrivacySetting {
  ///None = 0
  @JsonValue(0)
  None,
  ///Public = 1
  @JsonValue(1)
  Public,
  ///Private = 2
  @JsonValue(2)
  Private,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension ComponentPrivacySettingExtension on ComponentPrivacySetting{
  int get value {
    switch(this){
      case ComponentPrivacySetting.None:
        return 0;
      case ComponentPrivacySetting.Public:
        return 1;
      case ComponentPrivacySetting.Private:
        return 2;
      default:
        return null;
    }
  }
}