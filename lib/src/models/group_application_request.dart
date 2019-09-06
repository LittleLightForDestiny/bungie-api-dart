
import 'package:json_annotation/json_annotation.dart';
part 'group_application_request.g.dart';

@JsonSerializable()
class GroupApplicationRequest {

	@JsonKey(name:'message')
	String message;
	GroupApplicationRequest();

	factory GroupApplicationRequest.fromJson(Map<String, dynamic> json) => _$GroupApplicationRequestFromJson(json);
	
	Map<String, dynamic> toJson() => _$GroupApplicationRequestToJson(this);
}
