import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'group_potential_member.dart';
import 'group_v2.dart';

part 'group_potential_membership.g.dart';

@JsonSerializable()
class GroupPotentialMembership{	
	GroupPotentialMembership();

	
	@JsonKey(name:'member')
	GroupPotentialMember? member;
	
	@JsonKey(name:'group')
	GroupV2? group;

	factory GroupPotentialMembership.fromJson(Map<String, dynamic> json) {
		return _$GroupPotentialMembershipFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$GroupPotentialMembershipToJson(this);

	static Future<GroupPotentialMembership> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, GroupPotentialMembership>((json)=>GroupPotentialMembership.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}