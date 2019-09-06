
import 'package:json_annotation/json_annotation.dart';
part 'destiny_action_request.g.dart';

@JsonSerializable()
class DestinyActionRequest {

	@JsonKey(name:'membershipType')
	int membershipType;
	DestinyActionRequest();

	factory DestinyActionRequest.fromJson(Map<String, dynamic> json) => _$DestinyActionRequestFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyActionRequestToJson(this);
}
