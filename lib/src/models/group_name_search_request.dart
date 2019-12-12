import 'package:json_annotation/json_annotation.dart';


part 'group_name_search_request.g.dart';

@JsonSerializable()
class GroupNameSearchRequest{
	
	GroupNameSearchRequest();

	factory GroupNameSearchRequest.fromJson(Map<String, dynamic> json) => _$GroupNameSearchRequestFromJson(json);

	@JsonKey(name:'groupName')
	String groupName;
	@JsonKey(name:'groupType')
	int groupType;

	
	
	Map<String, dynamic> toJson() => _$GroupNameSearchRequestToJson(this);
}