import 'package:json_annotation/json_annotation.dart';

import 'destiny_insert_plugs_request_entry.dart';
import '../enums/bungie_membership_type.dart';

part 'destiny_insert_plugs_free_action_request.g.dart';

@JsonSerializable()
class DestinyInsertPlugsFreeActionRequest{	
	DestinyInsertPlugsFreeActionRequest();

	factory DestinyInsertPlugsFreeActionRequest.fromJson(Map<String, dynamic> json) {
		return _$DestinyInsertPlugsFreeActionRequestFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyInsertPlugsFreeActionRequestToJson(this);
	
	/// The plugs being inserted.
	@JsonKey(name:'plug')
	DestinyInsertPlugsRequestEntry? plug;
	
	/// The instance ID of the item for this action request.
	@JsonKey(name:'itemId')
	String? itemId;
	
	@JsonKey(name:'characterId')
	String? characterId;
	
	@JsonKey(name:'membershipType',fromJson:decodeBungieMembershipType,toJson:encodeBungieMembershipType)
	BungieMembershipType? membershipType;
}