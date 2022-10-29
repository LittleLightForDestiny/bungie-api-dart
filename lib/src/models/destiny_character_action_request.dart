import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import '../enums/bungie_membership_type.dart';

part 'destiny_character_action_request.g.dart';

@JsonSerializable()
class DestinyCharacterActionRequest{	
	DestinyCharacterActionRequest();

	
	@JsonKey(name:'characterId')
	String? characterId;
	
	@JsonKey(name:'membershipType',fromJson:decodeBungieMembershipType,toJson:encodeBungieMembershipType)
	BungieMembershipType? membershipType;

	factory DestinyCharacterActionRequest.fromJson(Map<String, dynamic> json) {
		return _$DestinyCharacterActionRequestFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyCharacterActionRequestToJson(this);

	static Future<DestinyCharacterActionRequest> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyCharacterActionRequest>((json)=>DestinyCharacterActionRequest.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}