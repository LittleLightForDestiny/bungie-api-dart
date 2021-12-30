import 'package:json_annotation/json_annotation.dart';

import 'group_v2.dart';

part 'group_member_leave_result.g.dart';

@JsonSerializable()
class GroupMemberLeaveResult{	
	GroupMemberLeaveResult();

	factory GroupMemberLeaveResult.fromJson(Map<String, dynamic> json) {
		return _$GroupMemberLeaveResultFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$GroupMemberLeaveResultToJson(this);
	
	@JsonKey(name:'group')
	GroupV2? group;
	
	@JsonKey(name:'groupDeleted')
	bool? groupDeleted;
}