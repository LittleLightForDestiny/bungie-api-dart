
import 'package:json_annotation/json_annotation.dart';
part 'destiny_item_action_request.g.dart';

@JsonSerializable()
class DestinyItemActionRequest {

	@JsonKey(name:'itemId')
	String itemId;

	@JsonKey(name:'characterId')
	String characterId;

	@JsonKey(name:'membershipType')
	int membershipType;
	DestinyItemActionRequest();

	factory DestinyItemActionRequest.fromJson(Map<String, dynamic> json) => _$DestinyItemActionRequestFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyItemActionRequestToJson(this);
}
