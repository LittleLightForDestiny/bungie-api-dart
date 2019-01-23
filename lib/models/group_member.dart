import 'user_info_card.dart';

/**  */
class GroupMember{
	
	/** The member levels used by all V2 Groups API. Individual group types use their own mappings in their native storage (general uses BnetDbGroupMemberType and D2 clans use ClanMemberLevel), but they are all translated to this in the runtime api. These runtime values should NEVER be stored anywhere, so the values can be changed as necessary. */
	int memberType;
	
	/**  */
	bool isOnline;
	
	/**  */
	String groupId;
	
	/** This contract supplies basic information commonly used to display a minimal amount of information about a user. Take care to not add more properties here unless the property applies in all (or at least the majority) of the situations where UserInfoCard is used. Avoid adding game specific or platform specific details here. In cases where UserInfoCard is a subset of the data needed in a contract, use UserInfoCard as a property of other contracts. */
	UserInfoCard destinyUserInfo;
	
	/** This contract supplies basic information commonly used to display a minimal amount of information about a user. Take care to not add more properties here unless the property applies in all (or at least the majority) of the situations where UserInfoCard is used. Avoid adding game specific or platform specific details here. In cases where UserInfoCard is a subset of the data needed in a contract, use UserInfoCard as a property of other contracts. */
	UserInfoCard bungieNetUserInfo;
	
	/**  */
	String joinDate;
	GroupMember(
		this.memberType,
		this.isOnline,
		this.groupId,
		this.destinyUserInfo,
		this.bungieNetUserInfo,
		this.joinDate,
	);

	static GroupMember fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new GroupMember(
				data['memberType'],
				data['isOnline'],
				data['groupId'],
				data['destinyUserInfo'] != null ? UserInfoCard.fromMap(data['destinyUserInfo']) : null,
				data['bungieNetUserInfo'] != null ? UserInfoCard.fromMap(data['bungieNetUserInfo']) : null,
				data['joinDate'],
		);
	}

	static List<GroupMember> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<GroupMember> list = new List();
    data.forEach((item) {
      list.add(GroupMember.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['memberType'] = this.memberType;
			data['isOnline'] = this.isOnline;
			data['groupId'] = this.groupId;
			data['destinyUserInfo'] = this.destinyUserInfo != null? this.destinyUserInfo.toMap() : null;
			data['bungieNetUserInfo'] = this.bungieNetUserInfo != null? this.bungieNetUserInfo.toMap() : null;
			data['joinDate'] = this.joinDate;
		return data;
	}
}