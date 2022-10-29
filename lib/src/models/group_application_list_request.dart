import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'user_membership.dart';

part 'group_application_list_request.g.dart';

@JsonSerializable()
class GroupApplicationListRequest{	
	GroupApplicationListRequest();

	
	@JsonKey(name:'memberships')
	List<UserMembership>? memberships;
	
	@JsonKey(name:'message')
	String? message;

	factory GroupApplicationListRequest.fromJson(Map<String, dynamic> json) {
		return _$GroupApplicationListRequestFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$GroupApplicationListRequestToJson(this);

	static Future<GroupApplicationListRequest> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, GroupApplicationListRequest>((json)=>GroupApplicationListRequest.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}