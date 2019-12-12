import 'package:json_annotation/json_annotation.dart';


part 'destiny_action_request.g.dart';

@JsonSerializable()
class DestinyActionRequest{
	
	DestinyActionRequest();

	factory DestinyActionRequest.fromJson(Map<String, dynamic> json) => _$DestinyActionRequestFromJson(json);

	@JsonKey(name:'membershipType')
	int membershipType;

	
	
	Map<String, dynamic> toJson() => _$DestinyActionRequestToJson(this);
}