import 'package:json_annotation/json_annotation.dart';

enum DestinyGamePrivacySetting {
  ///Open = 0
  @JsonValue(0)
  Open,
  ///ClanAndFriendsOnly = 1
  @JsonValue(1)
  ClanAndFriendsOnly,
  ///FriendsOnly = 2
  @JsonValue(2)
  FriendsOnly,
  ///InvitationOnly = 3
  @JsonValue(3)
  InvitationOnly,
  ///Closed = 4
  @JsonValue(4)
  Closed,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension DestinyGamePrivacySettingExtension on DestinyGamePrivacySetting{
  int? get value {
    if (_$DestinyGamePrivacySettingEnumMap.containsKey(this)){
      return _$DestinyGamePrivacySettingEnumMap[this];
    }
    return null;
  }
}

DestinyGamePrivacySetting? decodeDestinyGamePrivacySetting (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$DestinyGamePrivacySettingValueMap.containsKey(value)){
    return _$DestinyGamePrivacySettingValueMap[value];
  }

  return DestinyGamePrivacySetting.ProtectedInvalidEnumValue;
}

int? encodeDestinyGamePrivacySetting (DestinyGamePrivacySetting? value) {
  return value?.value;
}

const Map<DestinyGamePrivacySetting, int> _$DestinyGamePrivacySettingEnumMap = <DestinyGamePrivacySetting, int>{
    DestinyGamePrivacySetting.Open:0,
    DestinyGamePrivacySetting.ClanAndFriendsOnly:1,
    DestinyGamePrivacySetting.FriendsOnly:2,
    DestinyGamePrivacySetting.InvitationOnly:3,
    DestinyGamePrivacySetting.Closed:4,
};
const Map<int, DestinyGamePrivacySetting> _$DestinyGamePrivacySettingValueMap = <int, DestinyGamePrivacySetting>{
    0:DestinyGamePrivacySetting.Open,
    1:DestinyGamePrivacySetting.ClanAndFriendsOnly,
    2:DestinyGamePrivacySetting.FriendsOnly,
    3:DestinyGamePrivacySetting.InvitationOnly,
    4:DestinyGamePrivacySetting.Closed,
};