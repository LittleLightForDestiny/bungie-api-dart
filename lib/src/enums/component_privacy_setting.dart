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
  int? get value {
    if (_$ComponentPrivacySettingEnumMap.containsKey(this)){
      return _$ComponentPrivacySettingEnumMap[this];
    }
    return null;
  }
}

ComponentPrivacySetting? decodeComponentPrivacySetting (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$ComponentPrivacySettingValueMap.containsKey(value)){
    return _$ComponentPrivacySettingValueMap[value];
  }

  return ComponentPrivacySetting.ProtectedInvalidEnumValue;
}

int? encodeComponentPrivacySetting (ComponentPrivacySetting? value) {
  return value?.value;
}

const Map<ComponentPrivacySetting, int> _$ComponentPrivacySettingEnumMap = <ComponentPrivacySetting, int>{
    ComponentPrivacySetting.None:0,
    ComponentPrivacySetting.Public:1,
    ComponentPrivacySetting.Private:2,
};
const Map<int, ComponentPrivacySetting> _$ComponentPrivacySettingValueMap = <int, ComponentPrivacySetting>{
    0:ComponentPrivacySetting.None,
    1:ComponentPrivacySetting.Public,
    2:ComponentPrivacySetting.Private,
};