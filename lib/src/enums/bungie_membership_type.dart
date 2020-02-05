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
}

extension BungieMembershipTypeExtension on BungieMembershipType{
  int get value {
    switch(this){
      case BungieMembershipType.None:
        return 0;
      case BungieMembershipType.TigerXbox:
        return 1;
      case BungieMembershipType.TigerPsn:
        return 2;
      case BungieMembershipType.TigerSteam:
        return 3;
      case BungieMembershipType.TigerBlizzard:
        return 4;
      case BungieMembershipType.TigerStadia:
        return 5;
      case BungieMembershipType.TigerDemon:
        return 10;
      case BungieMembershipType.BungieNext:
        return 254;
      case BungieMembershipType.All:
        return -1;
      default:
        return null;
    }
  }
}