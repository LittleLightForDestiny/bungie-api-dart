import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'group_v2.dart';

part 'group_member_leave_result.g.dart';

@JsonSerializable()
class GroupMemberLeaveResult{	
	GroupMemberLeaveResult();

	
	@JsonKey(name:'group')
	GroupV2? group;
	
	@JsonKey(name:'groupDeleted')
	bool? groupDeleted;

	factory GroupMemberLeaveResult.fromJson(Map<String, dynamic> json) {
		return _$GroupMemberLeaveResultFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$GroupMemberLeaveResultToJson(this);

	static Future<GroupMemberLeaveResult> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, GroupMemberLeaveResult>((json)=>GroupMemberLeaveResult.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}