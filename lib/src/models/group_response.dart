import 'group_v2.dart';
import 'group_member.dart';
import 'group_potential_member.dart';

import 'package:json_annotation/json_annotation.dart';
part 'group_response.g.dart';

@JsonSerializable()
class GroupResponse {

	@JsonKey(name:'detail')
	GroupV2 detail;

	@JsonKey(name:'founder')
	GroupMember founder;

	@JsonKey(name:'alliedIds')
	List<String> alliedIds;

	@JsonKey(name:'parentGroup')
	GroupV2 parentGroup;

	@JsonKey(name:'allianceStatus')
	int allianceStatus;

	@JsonKey(name:'groupJoinInviteCount')
	int groupJoinInviteCount;

	/// This property will be populated if the authenticated user is a member of the group. Note that because of account linking, a user can sometimes be part of a clan more than once. As such, this returns the highest member type available.
	@JsonKey(name:'currentUserMemberMap')
	Map<String, GroupMember> currentUserMemberMap;

	/// This property will be populated if the authenticated user is an applicant or has an outstanding invitation to join. Note that because of account linking, a user can sometimes be part of a clan more than once.
	@JsonKey(name:'currentUserPotentialMemberMap')
	Map<String, GroupPotentialMember> currentUserPotentialMemberMap;
	GroupResponse();

	factory GroupResponse.fromJson(Map<String, dynamic> json) => _$GroupResponseFromJson(json);
	
	Map<String, dynamic> toJson() => _$GroupResponseToJson(this);
}
