import 'package:json_annotation/json_annotation.dart';

import '../enums/bungie_membership_type.dart';

part 'destiny_action_request.g.dart';

@JsonSerializable()
class DestinyActionRequest{
	
	DestinyActionRequest();

	factory DestinyActionRequest.fromJson(Map<String, dynamic> json) => _$DestinyActionRequestFromJson(json);

	@JsonKey(name:'membershipType',unknownEnumValue:BungieMembershipType.None)
	BungieMembershipType membershipType;

	
	
	Map<String, dynamic> toJson() => _$DestinyActionRequestToJson(this);
}