import 'package:json_annotation/json_annotation.dart';


part 'group_application_response.g.dart';

@JsonSerializable()
class GroupApplicationResponse{
	
	GroupApplicationResponse();

	factory GroupApplicationResponse.fromJson(Map<String, dynamic> json) => _$GroupApplicationResponseFromJson(json);

	@JsonKey(name:'resolution')
	int resolution;

	
	
	Map<String, dynamic> toJson() => _$GroupApplicationResponseToJson(this);
}