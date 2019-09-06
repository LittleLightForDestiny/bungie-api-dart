
import 'package:json_annotation/json_annotation.dart';
part 'destiny_item_state_request.g.dart';

@JsonSerializable()
class DestinyItemStateRequest {

	@JsonKey(name:'state')
	bool state;

	@JsonKey(name:'itemId')
	String itemId;

	@JsonKey(name:'characterId')
	String characterId;

	@JsonKey(name:'membershipType')
	int membershipType;
	DestinyItemStateRequest();

	factory DestinyItemStateRequest.fromJson(Map<String, dynamic> json) => _$DestinyItemStateRequestFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyItemStateRequestToJson(this);
}
