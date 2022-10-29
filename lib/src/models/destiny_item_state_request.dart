import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import '../enums/bungie_membership_type.dart';

part 'destiny_item_state_request.g.dart';

@JsonSerializable()
class DestinyItemStateRequest{	
	DestinyItemStateRequest();

	
	@JsonKey(name:'state')
	bool? state;
	
	/// The instance ID of the item for this action request.
	@JsonKey(name:'itemId')
	String? itemId;
	
	@JsonKey(name:'characterId')
	String? characterId;
	
	@JsonKey(name:'membershipType',fromJson:decodeBungieMembershipType,toJson:encodeBungieMembershipType)
	BungieMembershipType? membershipType;

	factory DestinyItemStateRequest.fromJson(Map<String, dynamic> json) {
		return _$DestinyItemStateRequestFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyItemStateRequestToJson(this);

	static Future<DestinyItemStateRequest> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyItemStateRequest>((json)=>DestinyItemStateRequest.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}