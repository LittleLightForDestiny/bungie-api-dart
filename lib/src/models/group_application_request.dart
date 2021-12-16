import 'package:json_annotation/json_annotation.dart';


part 'group_application_request.g.dart';

@JsonSerializable()
class GroupApplicationRequest{
	
	GroupApplicationRequest();

	factory GroupApplicationRequest.fromJson(Map<String, dynamic> json) {
		return _$GroupApplicationRequestFromJson(json);
	}

	@JsonKey(name:'message')
	String? message;

	
	
	Map<String, dynamic> toJson() => _$GroupApplicationRequestToJson(this);
}