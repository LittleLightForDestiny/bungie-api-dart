import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import '../enums/group_application_resolve_state.dart';

part 'group_application_response.g.dart';

@JsonSerializable()
class GroupApplicationResponse{	
	GroupApplicationResponse();

	
	@JsonKey(name:'resolution',fromJson:decodeGroupApplicationResolveState,toJson:encodeGroupApplicationResolveState)
	GroupApplicationResolveState? resolution;

	factory GroupApplicationResponse.fromJson(Map<String, dynamic> json) {
		return _$GroupApplicationResponseFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$GroupApplicationResponseToJson(this);

	static Future<GroupApplicationResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, GroupApplicationResponse>((json)=>GroupApplicationResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}