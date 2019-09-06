import 'group_potential_member.dart';
import 'group_v2.dart';

import 'package:json_annotation/json_annotation.dart';
part 'group_potential_membership.g.dart';

@JsonSerializable()
class GroupPotentialMembership {

	@JsonKey(name:'member')
	GroupPotentialMember member;

	@JsonKey(name:'group')
	GroupV2 group;
	GroupPotentialMembership();

	factory GroupPotentialMembership.fromJson(Map<String, dynamic> json) => _$GroupPotentialMembershipFromJson(json);
	
	Map<String, dynamic> toJson() => _$GroupPotentialMembershipToJson(this);
}
