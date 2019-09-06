import 'group_member.dart';
import 'group_v2.dart';

import 'package:json_annotation/json_annotation.dart';
part 'group_membership.g.dart';

@JsonSerializable()
class GroupMembership {

	@JsonKey(name:'member')
	GroupMember member;

	@JsonKey(name:'group')
	GroupV2 group;
	GroupMembership();

	factory GroupMembership.fromJson(Map<String, dynamic> json) => _$GroupMembershipFromJson(json);
	
	Map<String, dynamic> toJson() => _$GroupMembershipToJson(this);
}
