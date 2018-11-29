import 'group_v2.dart';
import 'group_member.dart';
import 'group_v2.dart';
import 'group_member.dart';
import 'group_potential_member.dart';
class GroupResponse{
	GroupV2 detail;
	GroupMember founder;
	List<int> alliedIds;
	GroupV2 parentGroup;
	int allianceStatus;
	int groupJoinInviteCount;
	Map<GroupMember, dynamic> currentUserMemberMap;
	Map<GroupPotentialMember, dynamic> currentUserPotentialMemberMap;
	GroupResponse(
		GroupV2 this.detail,
		GroupMember this.founder,
		List<int> this.alliedIds,
		GroupV2 this.parentGroup,
		int this.allianceStatus,
		int this.groupJoinInviteCount,
		Map<GroupMember, dynamic> this.currentUserMemberMap,
		Map<GroupPotentialMember, dynamic> this.currentUserPotentialMemberMap,
	);

	static GroupResponse fromJson(Map<String, dynamic> data){
		return new GroupResponse(
				GroupV2.fromJson(data['detail']),
				GroupMember.fromJson(data['founder']),
				data['alliedIds'],
				GroupV2.fromJson(data['parentGroup']),
				data['allianceStatus'],
				data['groupJoinInviteCount'],
				data['currentUserMemberMap'],
				data['currentUserPotentialMemberMap'],
		);
	}

	static List<GroupResponse> fromList(List<dynamic> data){
		List<GroupResponse> list = new List();
    data.forEach((item) {
      list.add(GroupResponse.fromJson(item));
    });
    return list;
	}
}