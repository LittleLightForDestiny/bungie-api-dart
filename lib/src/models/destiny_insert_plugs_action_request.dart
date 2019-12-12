import 'package:json_annotation/json_annotation.dart';

import 'destiny_insert_plugs_request_entry.dart';

part 'destiny_insert_plugs_action_request.g.dart';

@JsonSerializable()
class DestinyInsertPlugsActionRequest{
	
	DestinyInsertPlugsActionRequest();

	factory DestinyInsertPlugsActionRequest.fromJson(Map<String, dynamic> json) => _$DestinyInsertPlugsActionRequestFromJson(json);

	/// Action token provided by the AwaGetActionToken API call.
	@JsonKey(name:'actionToken')
	String actionToken;
	/// The instance ID of the item having a plug inserted. Only instanced items can have sockets.
	@JsonKey(name:'itemInstanceId')
	String itemInstanceId;
	/// The plugs being inserted.
	@JsonKey(name:'plug')
	DestinyInsertPlugsRequestEntry plug;
	@JsonKey(name:'characterId')
	String characterId;
	@JsonKey(name:'membershipType')
	int membershipType;

	
	
	Map<String, dynamic> toJson() => _$DestinyInsertPlugsActionRequestToJson(this);
}