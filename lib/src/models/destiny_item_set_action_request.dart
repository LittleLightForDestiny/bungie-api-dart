
import 'package:json_annotation/json_annotation.dart';
part 'destiny_item_set_action_request.g.dart';

@JsonSerializable()
class DestinyItemSetActionRequest {

	@JsonKey(name:'itemIds')
	List<String> itemIds;

	@JsonKey(name:'characterId')
	String characterId;

	@JsonKey(name:'membershipType')
	int membershipType;
	DestinyItemSetActionRequest();

	factory DestinyItemSetActionRequest.fromJson(Map<String, dynamic> json) => _$DestinyItemSetActionRequestFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyItemSetActionRequestToJson(this);
}
