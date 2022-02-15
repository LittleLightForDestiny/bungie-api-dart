import 'package:json_annotation/json_annotation.dart';

import '../enums/bungie_membership_type.dart';

part 'destiny_character_action_request.g.dart';

@JsonSerializable()
class DestinyCharacterActionRequest{	
	DestinyCharacterActionRequest();

	factory DestinyCharacterActionRequest.fromJson(Map<String, dynamic> json) {
		return _$DestinyCharacterActionRequestFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyCharacterActionRequestToJson(this);
	
	@JsonKey(name:'characterId')
	String? characterId;
	
	@JsonKey(name:'membershipType',fromJson:decodeBungieMembershipType,toJson:encodeBungieMembershipType)
	BungieMembershipType? membershipType;
}