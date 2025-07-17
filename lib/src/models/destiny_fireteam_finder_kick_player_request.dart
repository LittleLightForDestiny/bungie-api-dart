import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import '../enums/bungie_membership_type.dart';

part 'destiny_fireteam_finder_kick_player_request.g.dart';

@JsonSerializable()
class DestinyFireteamFinderKickPlayerRequest{	
	DestinyFireteamFinderKickPlayerRequest();

	
	@JsonKey(name:'targetMembershipType',fromJson:decodeBungieMembershipType,toJson:encodeBungieMembershipType)
	BungieMembershipType? targetMembershipType;
	
	@JsonKey(name:'targetCharacterId')
	String? targetCharacterId;

	factory DestinyFireteamFinderKickPlayerRequest.fromJson(Map<String, dynamic> json) {
		return _$DestinyFireteamFinderKickPlayerRequestFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyFireteamFinderKickPlayerRequestToJson(this);

	static Future<DestinyFireteamFinderKickPlayerRequest> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyFireteamFinderKickPlayerRequest>((json)=>DestinyFireteamFinderKickPlayerRequest.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}