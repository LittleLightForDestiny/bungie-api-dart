import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import '../enums/bungie_membership_type.dart';

part 'destiny_action_request.g.dart';

@JsonSerializable()
class DestinyActionRequest{	
	DestinyActionRequest();

	
	@JsonKey(name:'membershipType',fromJson:decodeBungieMembershipType,toJson:encodeBungieMembershipType)
	BungieMembershipType? membershipType;

	factory DestinyActionRequest.fromJson(Map<String, dynamic> json) {
		return _$DestinyActionRequestFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyActionRequestToJson(this);

	static Future<DestinyActionRequest> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyActionRequest>((json)=>DestinyActionRequest.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}