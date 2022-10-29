import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_insert_plugs_request_entry.dart';
import '../enums/bungie_membership_type.dart';

part 'destiny_insert_plugs_action_request.g.dart';

@JsonSerializable()
class DestinyInsertPlugsActionRequest{	
	DestinyInsertPlugsActionRequest();

	
	/// Action token provided by the AwaGetActionToken API call.
	@JsonKey(name:'actionToken')
	String? actionToken;
	
	/// The instance ID of the item having a plug inserted. Only instanced items can have sockets.
	@JsonKey(name:'itemInstanceId')
	String? itemInstanceId;
	
	/// The plugs being inserted.
	@JsonKey(name:'plug')
	DestinyInsertPlugsRequestEntry? plug;
	
	@JsonKey(name:'characterId')
	String? characterId;
	
	@JsonKey(name:'membershipType',fromJson:decodeBungieMembershipType,toJson:encodeBungieMembershipType)
	BungieMembershipType? membershipType;

	factory DestinyInsertPlugsActionRequest.fromJson(Map<String, dynamic> json) {
		return _$DestinyInsertPlugsActionRequestFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyInsertPlugsActionRequestToJson(this);

	static Future<DestinyInsertPlugsActionRequest> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyInsertPlugsActionRequest>((json)=>DestinyInsertPlugsActionRequest.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}