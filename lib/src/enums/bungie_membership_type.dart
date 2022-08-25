import 'package:json_annotation/json_annotation.dart';

enum BungieMembershipType {
  ///None = 0
  @JsonValue(0)
  None,
  ///TigerXbox = 1
  @JsonValue(1)
  TigerXbox,
  ///TigerPsn = 2
  @JsonValue(2)
  TigerPsn,
  ///TigerSteam = 3
  @JsonValue(3)
  TigerSteam,
  ///TigerBlizzard = 4
  @JsonValue(4)
  TigerBlizzard,
  ///TigerStadia = 5
  @JsonValue(5)
  TigerStadia,
  ///TigerEgs = 6
  @JsonValue(6)
  TigerEgs,
  ///TigerDemon = 10
  @JsonValue(10)
  TigerDemon,
  ///BungieNext = 254
  @JsonValue(254)
  BungieNext,
  ///All = -1
  /// &quot;All&quot; is only valid for searching capabilities: you need to pass the actual matching BungieMembershipType for any query where you pass a known membershipId.
  @JsonValue(-1)
  All,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension BungieMembershipTypeExtension on BungieMembershipType{
  int? get value {
    if (_$BungieMembershipTypeEnumMap.containsKey(this)){
      return _$BungieMembershipTypeEnumMap[this];
    }
    return null;
  }
}

BungieMembershipType? decodeBungieMembershipType (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$BungieMembershipTypeValueMap.containsKey(value)){
    return _$BungieMembershipTypeValueMap[value];
  }

  return BungieMembershipType.ProtectedInvalidEnumValue;
}

int? encodeBungieMembershipType (BungieMembershipType? value) {
  return value?.value;
}

const Map<BungieMembershipType, int> _$BungieMembershipTypeEnumMap = <BungieMembershipType, int>{
    BungieMembershipType.None:0,
    BungieMembershipType.TigerXbox:1,
    BungieMembershipType.TigerPsn:2,
    BungieMembershipType.TigerSteam:3,
    BungieMembershipType.TigerBlizzard:4,
    BungieMembershipType.TigerStadia:5,
    BungieMembershipType.TigerEgs:6,
    BungieMembershipType.TigerDemon:10,
    BungieMembershipType.BungieNext:254,
    BungieMembershipType.All:-1,
};
const Map<int, BungieMembershipType> _$BungieMembershipTypeValueMap = <int, BungieMembershipType>{
    0:BungieMembershipType.None,
    1:BungieMembershipType.TigerXbox,
    2:BungieMembershipType.TigerPsn,
    3:BungieMembershipType.TigerSteam,
    4:BungieMembershipType.TigerBlizzard,
    5:BungieMembershipType.TigerStadia,
    6:BungieMembershipType.TigerEgs,
    10:BungieMembershipType.TigerDemon,
    254:BungieMembershipType.BungieNext,
    -1:BungieMembershipType.All,
};