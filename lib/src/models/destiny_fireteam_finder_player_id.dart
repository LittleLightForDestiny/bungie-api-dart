import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import '../enums/bungie_membership_type.dart';

part 'destiny_fireteam_finder_player_id.g.dart';

@JsonSerializable()
class DestinyFireteamFinderPlayerId{	
	DestinyFireteamFinderPlayerId();

	
	@JsonKey(name:'membershipId')
	String? membershipId;
	
	@JsonKey(name:'membershipType',fromJson:decodeBungieMembershipType,toJson:encodeBungieMembershipType)
	BungieMembershipType? membershipType;
	
	@JsonKey(name:'characterId')
	String? characterId;

	factory DestinyFireteamFinderPlayerId.fromJson(Map<String, dynamic> json) {
		return _$DestinyFireteamFinderPlayerIdFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyFireteamFinderPlayerIdToJson(this);

	static Future<DestinyFireteamFinderPlayerId> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyFireteamFinderPlayerId>((json)=>DestinyFireteamFinderPlayerId.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}