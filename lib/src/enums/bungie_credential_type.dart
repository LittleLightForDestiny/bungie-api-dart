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
  ///EgsId = 20
  @JsonValue(20)
  EgsId,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension BungieCredentialTypeExtension on BungieCredentialType{
  int? get value {
    if (_$BungieCredentialTypeEnumMap.containsKey(this)){
      return _$BungieCredentialTypeEnumMap[this];
    }
    return null;
  }
}

BungieCredentialType? decodeBungieCredentialType (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$BungieCredentialTypeValueMap.containsKey(value)){
    return _$BungieCredentialTypeValueMap[value];
  }

  return BungieCredentialType.ProtectedInvalidEnumValue;
}

int? encodeBungieCredentialType (BungieCredentialType? value) {
  return value?.value;
}

const Map<BungieCredentialType, int> _$BungieCredentialTypeEnumMap = <BungieCredentialType, int>{
    BungieCredentialType.None:0,
    BungieCredentialType.Xuid:1,
    BungieCredentialType.Psnid:2,
    BungieCredentialType.Wlid:3,
    BungieCredentialType.Fake:4,
    BungieCredentialType.Facebook:5,
    BungieCredentialType.Google:8,
    BungieCredentialType.Windows:9,
    BungieCredentialType.DemonId:10,
    BungieCredentialType.SteamId:12,
    BungieCredentialType.BattleNetId:14,
    BungieCredentialType.StadiaId:16,
    BungieCredentialType.TwitchId:18,
    BungieCredentialType.EgsId:20,
};
const Map<int, BungieCredentialType> _$BungieCredentialTypeValueMap = <int, BungieCredentialType>{
    0:BungieCredentialType.None,
    1:BungieCredentialType.Xuid,
    2:BungieCredentialType.Psnid,
    3:BungieCredentialType.Wlid,
    4:BungieCredentialType.Fake,
    5:BungieCredentialType.Facebook,
    8:BungieCredentialType.Google,
    9:BungieCredentialType.Windows,
    10:BungieCredentialType.DemonId,
    12:BungieCredentialType.SteamId,
    14:BungieCredentialType.BattleNetId,
    16:BungieCredentialType.StadiaId,
    18:BungieCredentialType.TwitchId,
    20:BungieCredentialType.EgsId,
};