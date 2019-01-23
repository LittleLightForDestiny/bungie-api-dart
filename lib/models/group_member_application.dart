import 'user_info_card.dart';

/**  */
class GroupMemberApplication{
	
	/**  */
	String groupId;
	
	/**  */
	String creationDate;
	
	/**  */
	int resolveState;
	
	/**  */
	String resolveDate;
	
	/**  */
	String resolvedByMembershipId;
	
	/**  */
	String requestMessage;
	
	/**  */
	String resolveMessage;
	
	/** This contract supplies basic information commonly used to display a minimal amount of information about a user. Take care to not add more properties here unless the property applies in all (or at least the majority) of the situations where UserInfoCard is used. Avoid adding game specific or platform specific details here. In cases where UserInfoCard is a subset of the data needed in a contract, use UserInfoCard as a property of other contracts. */
	UserInfoCard destinyUserInfo;
	
	/** This contract supplies basic information commonly used to display a minimal amount of information about a user. Take care to not add more properties here unless the property applies in all (or at least the majority) of the situations where UserInfoCard is used. Avoid adding game specific or platform specific details here. In cases where UserInfoCard is a subset of the data needed in a contract, use UserInfoCard as a property of other contracts. */
	UserInfoCard bungieNetUserInfo;
	GroupMemberApplication(
		this.groupId,
		this.creationDate,
		this.resolveState,
		this.resolveDate,
		this.resolvedByMembershipId,
		this.requestMessage,
		this.resolveMessage,
		this.destinyUserInfo,
		this.bungieNetUserInfo,
	);

	static GroupMemberApplication fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new GroupMemberApplication(
				data['groupId'],
				data['creationDate'],
				data['resolveState'],
				data['resolveDate'],
				data['resolvedByMembershipId'],
				data['requestMessage'],
				data['resolveMessage'],
				data['destinyUserInfo'] != null ? UserInfoCard.fromMap(data['destinyUserInfo']) : null,
				data['bungieNetUserInfo'] != null ? UserInfoCard.fromMap(data['bungieNetUserInfo']) : null,
		);
	}

	static List<GroupMemberApplication> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<GroupMemberApplication> list = new List();
    data.forEach((item) {
      list.add(GroupMemberApplication.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['groupId'] = this.groupId;
			data['creationDate'] = this.creationDate;
			data['resolveState'] = this.resolveState;
			data['resolveDate'] = this.resolveDate;
			data['resolvedByMembershipId'] = this.resolvedByMembershipId;
			data['requestMessage'] = this.requestMessage;
			data['resolveMessage'] = this.resolveMessage;
			data['destinyUserInfo'] = this.destinyUserInfo != null? this.destinyUserInfo.toMap() : null;
			data['bungieNetUserInfo'] = this.bungieNetUserInfo != null? this.bungieNetUserInfo.toMap() : null;
		return data;
	}
}