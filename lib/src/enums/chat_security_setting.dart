import 'package:json_annotation/json_annotation.dart';

enum ChatSecuritySetting {
  ///Group = 0
  @JsonValue(0)
  Group,
  ///Admins = 1
  @JsonValue(1)
  Admins,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension ChatSecuritySettingExtension on ChatSecuritySetting{
  int? get value {
    if (_$ChatSecuritySettingEnumMap.containsKey(this)){
      return _$ChatSecuritySettingEnumMap[this];
    }
    return null;
  }
}

ChatSecuritySetting? decodeChatSecuritySetting (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$ChatSecuritySettingValueMap.containsKey(value)){
    return _$ChatSecuritySettingValueMap[value];
  }

  return ChatSecuritySetting.ProtectedInvalidEnumValue;
}

int? encodeChatSecuritySetting (ChatSecuritySetting? value) {
  return value?.value;
}

const Map<ChatSecuritySetting, int> _$ChatSecuritySettingEnumMap = <ChatSecuritySetting, int>{
    ChatSecuritySetting.Group:0,
    ChatSecuritySetting.Admins:1,
};
const Map<int, ChatSecuritySetting> _$ChatSecuritySettingValueMap = <int, ChatSecuritySetting>{
    0:ChatSecuritySetting.Group,
    1:ChatSecuritySetting.Admins,
};