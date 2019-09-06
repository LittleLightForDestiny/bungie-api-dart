
import 'package:json_annotation/json_annotation.dart';
part 'group_application_response.g.dart';

@JsonSerializable()
class GroupApplicationResponse {

	@JsonKey(name:'resolution')
	int resolution;
	GroupApplicationResponse();

	factory GroupApplicationResponse.fromJson(Map<String, dynamic> json) => _$GroupApplicationResponseFromJson(json);
	
	Map<String, dynamic> toJson() => _$GroupApplicationResponseToJson(this);
}
