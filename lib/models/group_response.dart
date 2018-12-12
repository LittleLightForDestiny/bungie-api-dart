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

	static GroupResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new GroupResponse(
				GroupV2.fromMap(data['detail']),
				GroupMember.fromMap(data['founder']),
				data['alliedIds'],
				GroupV2.fromMap(data['parentGroup']),
				data['allianceStatus'],
				data['groupJoinInviteCount'],
				data['currentUserMemberMap'],
				data['currentUserPotentialMemberMap'],
		);
	}

	static List<GroupResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<GroupResponse> list = new List();
    data.forEach((item) {
      list.add(GroupResponse.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['detail'] = detail.toMap();
			data['founder'] = founder.toMap();
			data['alliedIds'] = alliedIds;
			data['parentGroup'] = parentGroup.toMap();
			data['allianceStatus'] = allianceStatus;
			data['groupJoinInviteCount'] = groupJoinInviteCount;
			data['currentUserMemberMap'] = currentUserMemberMap;
			data['currentUserPotentialMemberMap'] = currentUserPotentialMemberMap;
	}
}