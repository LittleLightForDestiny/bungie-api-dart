import 'package:json_annotation/json_annotation.dart';


part 'destiny_character_action_request.g.dart';

@JsonSerializable()
class DestinyCharacterActionRequest{
	
	DestinyCharacterActionRequest();

	factory DestinyCharacterActionRequest.fromJson(Map<String, dynamic> json) => _$DestinyCharacterActionRequestFromJson(json);

	@JsonKey(name:'characterId')
	String characterId;
	@JsonKey(name:'membershipType')
	int membershipType;

	
	
	Map<String, dynamic> toJson() => _$DestinyCharacterActionRequestToJson(this);
}