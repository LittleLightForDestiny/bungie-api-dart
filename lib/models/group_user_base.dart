import 'user_info_card.dart';

/**  */
class GroupUserBase{
	
	/**  */
	String groupId;
	
	/** This contract supplies basic information commonly used to display a minimal amount of information about a user. Take care to not add more properties here unless the property applies in all (or at least the majority) of the situations where UserInfoCard is used. Avoid adding game specific or platform specific details here. In cases where UserInfoCard is a subset of the data needed in a contract, use UserInfoCard as a property of other contracts. */
	UserInfoCard destinyUserInfo;
	
	/** This contract supplies basic information commonly used to display a minimal amount of information about a user. Take care to not add more properties here unless the property applies in all (or at least the majority) of the situations where UserInfoCard is used. Avoid adding game specific or platform specific details here. In cases where UserInfoCard is a subset of the data needed in a contract, use UserInfoCard as a property of other contracts. */
	UserInfoCard bungieNetUserInfo;
	
	/**  */
	String joinDate;
	GroupUserBase(
		this.groupId,
		this.destinyUserInfo,
		this.bungieNetUserInfo,
		this.joinDate,
	);

	static GroupUserBase fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new GroupUserBase(
				data['groupId'],
				data['destinyUserInfo'] != null ? UserInfoCard.fromMap(data['destinyUserInfo']) : null,
				data['bungieNetUserInfo'] != null ? UserInfoCard.fromMap(data['bungieNetUserInfo']) : null,
				data['joinDate'],
		);
	}

	static List<GroupUserBase> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<GroupUserBase> list = new List();
    data.forEach((item) {
      list.add(GroupUserBase.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['groupId'] = this.groupId;
			data['destinyUserInfo'] = this.destinyUserInfo != null? this.destinyUserInfo.toMap() : null;
			data['bungieNetUserInfo'] = this.bungieNetUserInfo != null? this.bungieNetUserInfo.toMap() : null;
			data['joinDate'] = this.joinDate;
		return data;
	}
}