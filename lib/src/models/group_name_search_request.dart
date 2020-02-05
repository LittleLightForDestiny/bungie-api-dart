import 'package:json_annotation/json_annotation.dart';

import '../enums/group_type.dart';

part 'group_name_search_request.g.dart';

@JsonSerializable()
class GroupNameSearchRequest{
	
	GroupNameSearchRequest();

	factory GroupNameSearchRequest.fromJson(Map<String, dynamic> json) => _$GroupNameSearchRequestFromJson(json);

	@JsonKey(name:'groupName')
	String groupName;
	@JsonKey(name:'groupType',unknownEnumValue:GroupType.General)
	GroupType groupType;

	
	
	Map<String, dynamic> toJson() => _$GroupNameSearchRequestToJson(this);
}