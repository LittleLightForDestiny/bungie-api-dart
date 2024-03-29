import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'group_v2.dart';
import 'group_member.dart';
import '../enums/group_alliance_status.dart';
import 'group_potential_member.dart';

part 'group_response.g.dart';

@JsonSerializable()
class GroupResponse{	
	GroupResponse();

	
	@JsonKey(name:'detail')
	GroupV2? detail;
	
	@JsonKey(name:'founder')
	GroupMember? founder;
	
	@JsonKey(name:'alliedIds')
	List<String>? alliedIds;
	
	@JsonKey(name:'parentGroup')
	GroupV2? parentGroup;
	
	@JsonKey(name:'allianceStatus',fromJson:decodeGroupAllianceStatus,toJson:encodeGroupAllianceStatus)
	GroupAllianceStatus? allianceStatus;
	
	@JsonKey(name:'groupJoinInviteCount')
	int? groupJoinInviteCount;
	
	/// A convenience property that indicates if every membership you (the current user) have that is a part of this group are part of an account that is considered inactive - for example, overridden accounts in Cross Save.
	@JsonKey(name:'currentUserMembershipsInactiveForDestiny')
	bool? currentUserMembershipsInactiveForDestiny;
	
	/// This property will be populated if the authenticated user is a member of the group. Note that because of account linking, a user can sometimes be part of a clan more than once. As such, this returns the highest member type available.
	@JsonKey(name:'currentUserMemberMap')
	Map<String, GroupMember>? currentUserMemberMap;
	
	/// This property will be populated if the authenticated user is an applicant or has an outstanding invitation to join. Note that because of account linking, a user can sometimes be part of a clan more than once.
	@JsonKey(name:'currentUserPotentialMemberMap')
	Map<String, GroupPotentialMember>? currentUserPotentialMemberMap;

	factory GroupResponse.fromJson(Map<String, dynamic> json) {
		return _$GroupResponseFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$GroupResponseToJson(this);

	static Future<GroupResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, GroupResponse>((json)=>GroupResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}