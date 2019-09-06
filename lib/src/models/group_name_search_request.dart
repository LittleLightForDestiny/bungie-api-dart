
import 'package:json_annotation/json_annotation.dart';
part 'group_name_search_request.g.dart';

@JsonSerializable()
class GroupNameSearchRequest {

	@JsonKey(name:'groupName')
	String groupName;

	@JsonKey(name:'groupType')
	int groupType;
	GroupNameSearchRequest();

	factory GroupNameSearchRequest.fromJson(Map<String, dynamic> json) => _$GroupNameSearchRequestFromJson(json);
	
	Map<String, dynamic> toJson() => _$GroupNameSearchRequestToJson(this);
}
