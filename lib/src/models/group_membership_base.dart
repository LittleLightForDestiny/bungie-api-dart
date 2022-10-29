import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'group_v2.dart';

part 'group_membership_base.g.dart';

@JsonSerializable()
class GroupMembershipBase{	
	GroupMembershipBase();

	
	@JsonKey(name:'group')
	GroupV2? group;

	factory GroupMembershipBase.fromJson(Map<String, dynamic> json) {
		return _$GroupMembershipBaseFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$GroupMembershipBaseToJson(this);

	static Future<GroupMembershipBase> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, GroupMembershipBase>((json)=>GroupMembershipBase.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}