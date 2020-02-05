import 'package:json_annotation/json_annotation.dart';

import '../enums/bungie_membership_type.dart';

part 'destiny_character_action_request.g.dart';

@JsonSerializable()
class DestinyCharacterActionRequest{
	
	DestinyCharacterActionRequest();

	factory DestinyCharacterActionRequest.fromJson(Map<String, dynamic> json) => _$DestinyCharacterActionRequestFromJson(json);

	@JsonKey(name:'characterId')
	String characterId;
	@JsonKey(name:'membershipType',unknownEnumValue:BungieMembershipType.None)
	BungieMembershipType membershipType;

	
	
	Map<String, dynamic> toJson() => _$DestinyCharacterActionRequestToJson(this);
}