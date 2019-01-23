import 'user_info_card.dart';

/**  */
class GroupPotentialMember{
	
	/**  */
	int potentialStatus;
	
	/**  */
	String groupId;
	
	/** This contract supplies basic information commonly used to display a minimal amount of information about a user. Take care to not add more properties here unless the property applies in all (or at least the majority) of the situations where UserInfoCard is used. Avoid adding game specific or platform specific details here. In cases where UserInfoCard is a subset of the data needed in a contract, use UserInfoCard as a property of other contracts. */
	UserInfoCard destinyUserInfo;
	
	/** This contract supplies basic information commonly used to display a minimal amount of information about a user. Take care to not add more properties here unless the property applies in all (or at least the majority) of the situations where UserInfoCard is used. Avoid adding game specific or platform specific details here. In cases where UserInfoCard is a subset of the data needed in a contract, use UserInfoCard as a property of other contracts. */
	UserInfoCard bungieNetUserInfo;
	
	/**  */
	String joinDate;
	GroupPotentialMember(
		this.potentialStatus,
		this.groupId,
		this.destinyUserInfo,
		this.bungieNetUserInfo,
		this.joinDate,
	);

	static GroupPotentialMember fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new GroupPotentialMember(
				data['potentialStatus'],
				data['groupId'],
				data['destinyUserInfo'] != null ? UserInfoCard.fromMap(data['destinyUserInfo']) : null,
				data['bungieNetUserInfo'] != null ? UserInfoCard.fromMap(data['bungieNetUserInfo']) : null,
				data['joinDate'],
		);
	}

	static List<GroupPotentialMember> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<GroupPotentialMember> list = new List();
    data.forEach((item) {
      list.add(GroupPotentialMember.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['potentialStatus'] = this.potentialStatus;
			data['groupId'] = this.groupId;
			data['destinyUserInfo'] = this.destinyUserInfo != null? this.destinyUserInfo.toMap() : null;
			data['bungieNetUserInfo'] = this.bungieNetUserInfo != null? this.bungieNetUserInfo.toMap() : null;
			data['joinDate'] = this.joinDate;
		return data;
	}
}