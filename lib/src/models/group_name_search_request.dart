import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import '../enums/group_type.dart';

part 'group_name_search_request.g.dart';

@JsonSerializable()
class GroupNameSearchRequest{	
	GroupNameSearchRequest();

	
	@JsonKey(name:'groupName')
	String? groupName;
	
	@JsonKey(name:'groupType',fromJson:decodeGroupType,toJson:encodeGroupType)
	GroupType? groupType;

	factory GroupNameSearchRequest.fromJson(Map<String, dynamic> json) {
		return _$GroupNameSearchRequestFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$GroupNameSearchRequestToJson(this);

	static Future<GroupNameSearchRequest> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, GroupNameSearchRequest>((json)=>GroupNameSearchRequest.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}