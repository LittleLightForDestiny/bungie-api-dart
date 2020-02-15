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
  int get value {
    switch(this){
      case DestinyGamePrivacySetting.Open:
        return 0;
      case DestinyGamePrivacySetting.ClanAndFriendsOnly:
        return 1;
      case DestinyGamePrivacySetting.FriendsOnly:
        return 2;
      case DestinyGamePrivacySetting.InvitationOnly:
        return 3;
      case DestinyGamePrivacySetting.Closed:
        return 4;
      default:
        return null;
    }
  }
}