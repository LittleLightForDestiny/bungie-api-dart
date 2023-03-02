import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import '../enums/bungie_membership_type.dart';

part 'destiny_loadout_update_action_request.g.dart';

@JsonSerializable()
class DestinyLoadoutUpdateActionRequest{	
	DestinyLoadoutUpdateActionRequest();

	
	@JsonKey(name:'colorHash')
	int? colorHash;
	
	@JsonKey(name:'iconHash')
	int? iconHash;
	
	@JsonKey(name:'nameHash')
	int? nameHash;
	
	/// The index of the loadout for this action request.
	@JsonKey(name:'loadoutIndex')
	int? loadoutIndex;
	
	@JsonKey(name:'characterId')
	String? characterId;
	
	@JsonKey(name:'membershipType',fromJson:decodeBungieMembershipType,toJson:encodeBungieMembershipType)
	BungieMembershipType? membershipType;

	factory DestinyLoadoutUpdateActionRequest.fromJson(Map<String, dynamic> json) {
		return _$DestinyLoadoutUpdateActionRequestFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyLoadoutUpdateActionRequestToJson(this);

	static Future<DestinyLoadoutUpdateActionRequest> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyLoadoutUpdateActionRequest>((json)=>DestinyLoadoutUpdateActionRequest.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}