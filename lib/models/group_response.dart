import 'group_v2.dart';
import 'group_member.dart';
import 'group_potential_member.dart';

/**  */
class GroupResponse{
	
	/**  */
	GroupV2 detail;
	
	/**  */
	GroupMember founder;
	
	/**  */
	List<String> alliedIds;
	
	/**  */
	GroupV2 parentGroup;
	
	/**  */
	int allianceStatus;
	
	/**  */
	int groupJoinInviteCount;
	
	/** This property will be populated if the authenticated user is a member of the group. Note that because of account linking, a user can sometimes be part of a clan more than once. As such, this returns the highest member type available. */
	Map<String, GroupMember> currentUserMemberMap;
	
	/** This property will be populated if the authenticated user is an applicant or has an outstanding invitation to join. Note that because of account linking, a user can sometimes be part of a clan more than once. */
	Map<String, GroupPotentialMember> currentUserPotentialMemberMap;
	GroupResponse(
		this.detail,
		this.founder,
		this.alliedIds,
		this.parentGroup,
		this.allianceStatus,
		this.groupJoinInviteCount,
		this.currentUserMemberMap,
		this.currentUserPotentialMemberMap,
	);

	static GroupResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new GroupResponse(
				data['detail'] != null ? GroupV2.fromMap(data['detail']) : null,
				data['founder'] != null ? GroupMember.fromMap(data['founder']) : null,
				data['alliedIds'] != null ? data['alliedIds']?.cast<String>() ?? null : null,
				data['parentGroup'] != null ? GroupV2.fromMap(data['parentGroup']) : null,
				data['allianceStatus'],
				data['groupJoinInviteCount'],
				data['currentUserMemberMap'] != null ? Map<String, GroupMember>.from(data['currentUserMemberMap'].map((k, v)=>MapEntry(k, GroupMember.fromMap(v)))) : null,
				data['currentUserPotentialMemberMap'] != null ? Map<String, GroupPotentialMember>.from(data['currentUserPotentialMemberMap'].map((k, v)=>MapEntry(k, GroupPotentialMember.fromMap(v)))) : null,
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