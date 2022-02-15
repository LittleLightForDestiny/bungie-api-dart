import 'package:json_annotation/json_annotation.dart';

import '../enums/bungie_membership_type.dart';

part 'destiny_item_state_request.g.dart';

@JsonSerializable()
class DestinyItemStateRequest{	
	DestinyItemStateRequest();

	factory DestinyItemStateRequest.fromJson(Map<String, dynamic> json) {
		return _$DestinyItemStateRequestFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyItemStateRequestToJson(this);
	
	@JsonKey(name:'state')
	bool? state;
	
	/// The instance ID of the item for this action request.
	@JsonKey(name:'itemId')
	String? itemId;
	
	@JsonKey(name:'characterId')
	String? characterId;
	
	@JsonKey(name:'membershipType',fromJson:decodeBungieMembershipType,toJson:encodeBungieMembershipType)
	BungieMembershipType? membershipType;
}