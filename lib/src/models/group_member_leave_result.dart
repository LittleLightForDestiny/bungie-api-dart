import 'group_v2.dart';

import 'package:json_annotation/json_annotation.dart';
part 'group_member_leave_result.g.dart';

@JsonSerializable()
class GroupMemberLeaveResult {

	@JsonKey(name:'group')
	GroupV2 group;

	@JsonKey(name:'groupDeleted')
	bool groupDeleted;
	GroupMemberLeaveResult();

	factory GroupMemberLeaveResult.fromJson(Map<String, dynamic> json) => _$GroupMemberLeaveResultFromJson(json);
	
	Map<String, dynamic> toJson() => _$GroupMemberLeaveResultToJson(this);
}
