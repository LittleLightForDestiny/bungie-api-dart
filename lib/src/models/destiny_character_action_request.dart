import 'package:json_annotation/json_annotation.dart';

import '../enums/bungie_membership_type.dart';

part 'destiny_character_action_request.g.dart';

@JsonSerializable()
class DestinyCharacterActionRequest{
	
	DestinyCharacterActionRequest();

	factory DestinyCharacterActionRequest.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyCharacterActionRequestFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'characterId')
	String characterId;
	@JsonKey(name:'membershipType',unknownEnumValue:BungieMembershipType.ProtectedInvalidEnumValue)
	BungieMembershipType membershipType;

	
	
	Map<String, dynamic> toJson() => _$DestinyCharacterActionRequestToJson(this);
}