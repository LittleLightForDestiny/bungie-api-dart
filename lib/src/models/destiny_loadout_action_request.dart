import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import '../enums/bungie_membership_type.dart';

part 'destiny_loadout_action_request.g.dart';

@JsonSerializable()
class DestinyLoadoutActionRequest{	
	DestinyLoadoutActionRequest();

	
	/// The index of the loadout for this action request.
	@JsonKey(name:'loadoutIndex')
	int? loadoutIndex;
	
	@JsonKey(name:'characterId')
	String? characterId;
	
	@JsonKey(name:'membershipType',fromJson:decodeBungieMembershipType,toJson:encodeBungieMembershipType)
	BungieMembershipType? membershipType;

	factory DestinyLoadoutActionRequest.fromJson(Map<String, dynamic> json) {
		return _$DestinyLoadoutActionRequestFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyLoadoutActionRequestToJson(this);

	static Future<DestinyLoadoutActionRequest> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyLoadoutActionRequest>((json)=>DestinyLoadoutActionRequest.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}