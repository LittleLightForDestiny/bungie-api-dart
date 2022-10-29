import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import '../enums/bungie_membership_type.dart';

part 'destiny_item_set_action_request.g.dart';

@JsonSerializable()
class DestinyItemSetActionRequest{	
	DestinyItemSetActionRequest();

	
	@JsonKey(name:'itemIds')
	List<String>? itemIds;
	
	@JsonKey(name:'characterId')
	String? characterId;
	
	@JsonKey(name:'membershipType',fromJson:decodeBungieMembershipType,toJson:encodeBungieMembershipType)
	BungieMembershipType? membershipType;

	factory DestinyItemSetActionRequest.fromJson(Map<String, dynamic> json) {
		return _$DestinyItemSetActionRequestFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyItemSetActionRequestToJson(this);

	static Future<DestinyItemSetActionRequest> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyItemSetActionRequest>((json)=>DestinyItemSetActionRequest.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}