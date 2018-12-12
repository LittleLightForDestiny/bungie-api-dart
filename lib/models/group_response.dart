import 'group_v2.dart';
import 'group_member.dart';
import 'group_v2.dart';
import 'group_member.dart';
import 'group_potential_member.dart';
class GroupResponse{
	GroupV2 detail;
	GroupMember founder;
	List<String> alliedIds;
	GroupV2 parentGroup;
	int allianceStatus;
	int groupJoinInviteCount;
	Map<GroupMember, dynamic> currentUserMemberMap;
	Map<GroupPotentialMember, dynamic> currentUserPotentialMemberMap;
	GroupResponse(
		GroupV2 this.detail,
		GroupMember this.founder,
		List<String> this.alliedIds,
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
			data['detail'] = this.detail.toMap();
			data['founder'] = this.founder.toMap();
			data['alliedIds'] = this.alliedIds;
			data['parentGroup'] = this.parentGroup.toMap();
			data['allianceStatus'] = this.allianceStatus;
			data['groupJoinInviteCount'] = this.groupJoinInviteCount;
			data['currentUserMemberMap'] = this.currentUserMemberMap;
			data['currentUserPotentialMemberMap'] = this.currentUserPotentialMemberMap;
		return data;
	}
}