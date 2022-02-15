import 'package:json_annotation/json_annotation.dart';

import '../enums/bungie_membership_type.dart';

part 'destiny_item_action_request.g.dart';

@JsonSerializable()
class DestinyItemActionRequest{	
	DestinyItemActionRequest();

	factory DestinyItemActionRequest.fromJson(Map<String, dynamic> json) {
		return _$DestinyItemActionRequestFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyItemActionRequestToJson(this);
	
	/// The instance ID of the item for this action request.
	@JsonKey(name:'itemId')
	String? itemId;
	
	@JsonKey(name:'characterId')
	String? characterId;
	
	@JsonKey(name:'membershipType',fromJson:decodeBungieMembershipType,toJson:encodeBungieMembershipType)
	BungieMembershipType? membershipType;
}