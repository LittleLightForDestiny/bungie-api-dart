import 'user_membership.dart';

import 'package:json_annotation/json_annotation.dart';
part 'group_application_list_request.g.dart';

@JsonSerializable()
class GroupApplicationListRequest {

	@JsonKey(name:'memberships')
	List<UserMembership> memberships;

	@JsonKey(name:'message')
	String message;
	GroupApplicationListRequest();

	factory GroupApplicationListRequest.fromJson(Map<String, dynamic> json) => _$GroupApplicationListRequestFromJson(json);
	
	Map<String, dynamic> toJson() => _$GroupApplicationListRequestToJson(this);
}
