import 'package:json_annotation/json_annotation.dart';

import '../enums/bungie_membership_type.dart';

part 'destiny_item_set_action_request.g.dart';

@JsonSerializable()
class DestinyItemSetActionRequest{
	
	DestinyItemSetActionRequest();

	factory DestinyItemSetActionRequest.fromJson(Map<String, dynamic> json) => _$DestinyItemSetActionRequestFromJson(json);

	@JsonKey(name:'itemIds')
	List<String> itemIds;
	@JsonKey(name:'characterId')
	String characterId;
	@JsonKey(name:'membershipType',unknownEnumValue:BungieMembershipType.None)
	BungieMembershipType membershipType;

	
	
	Map<String, dynamic> toJson() => _$DestinyItemSetActionRequestToJson(this);
}