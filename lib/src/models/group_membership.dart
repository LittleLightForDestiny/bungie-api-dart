import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'group_member.dart';
import 'group_v2.dart';

part 'group_membership.g.dart';

@JsonSerializable()
class GroupMembership{	
	GroupMembership();

	
	@JsonKey(name:'member')
	GroupMember? member;
	
	@JsonKey(name:'group')
	GroupV2? group;

	factory GroupMembership.fromJson(Map<String, dynamic> json) {
		return _$GroupMembershipFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$GroupMembershipToJson(this);

	static Future<GroupMembership> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, GroupMembership>((json)=>GroupMembership.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}