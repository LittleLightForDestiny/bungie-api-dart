import 'package:json_annotation/json_annotation.dart';

enum BungieCredentialType {
  ///None = 0
  @JsonValue(0)
  None,
  ///Xuid = 1
  @JsonValue(1)
  Xuid,
  ///Psnid = 2
  @JsonValue(2)
  Psnid,
  ///Wlid = 3
  @JsonValue(3)
  Wlid,
  ///Fake = 4
  @JsonValue(4)
  Fake,
  ///Facebook = 5
  @JsonValue(5)
  Facebook,
  ///Google = 8
  @JsonValue(8)
  Google,
  ///Windows = 9
  @JsonValue(9)
  Windows,
  ///DemonId = 10
  @JsonValue(10)
  DemonId,
  ///SteamId = 12
  @JsonValue(12)
  SteamId,
  ///BattleNetId = 14
  @JsonValue(14)
  BattleNetId,
  ///StadiaId = 16
  @JsonValue(16)
  StadiaId,
  ///TwitchId = 18
  @JsonValue(18)
  TwitchId,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension BungieCredentialTypeExtension on BungieCredentialType{
  int get value {
    switch(this){
      case BungieCredentialType.None:
        return 0;
      case BungieCredentialType.Xuid:
        return 1;
      case BungieCredentialType.Psnid:
        return 2;
      case BungieCredentialType.Wlid:
        return 3;
      case BungieCredentialType.Fake:
        return 4;
      case BungieCredentialType.Facebook:
        return 5;
      case BungieCredentialType.Google:
        return 8;
      case BungieCredentialType.Windows:
        return 9;
      case BungieCredentialType.DemonId:
        return 10;
      case BungieCredentialType.SteamId:
        return 12;
      case BungieCredentialType.BattleNetId:
        return 14;
      case BungieCredentialType.StadiaId:
        return 16;
      case BungieCredentialType.TwitchId:
        return 18;
      default:
        return null;
    }
  }
}