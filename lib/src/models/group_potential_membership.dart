import 'package:json_annotation/json_annotation.dart';

import 'group_potential_member.dart';
import 'group_v2.dart';

part 'group_potential_membership.g.dart';

@JsonSerializable()
class GroupPotentialMembership{	
	GroupPotentialMembership();

	factory GroupPotentialMembership.fromJson(Map<String, dynamic> json) {
		return _$GroupPotentialMembershipFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$GroupPotentialMembershipToJson(this);
	
	@JsonKey(name:'member')
	GroupPotentialMember? member;
	
	@JsonKey(name:'group')
	GroupV2? group;
}