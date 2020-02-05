import 'package:json_annotation/json_annotation.dart';

enum ChatSecuritySetting {
  ///Group = 0
  @JsonValue(0)
  Group,
  ///Admins = 1
  @JsonValue(1)
  Admins,
}

extension ChatSecuritySettingExtension on ChatSecuritySetting{
  int get value {
    switch(this){
      case ChatSecuritySetting.Group:
        return 0;
      case ChatSecuritySetting.Admins:
        return 1;
      default:
        return null;
    }
  }
}