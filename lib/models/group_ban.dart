import 'user_info_card.dart';

/**  */
class GroupBan{
	
	/**  */
	String groupId;
	
	/** This contract supplies basic information commonly used to display a minimal amount of information about a user. Take care to not add more properties here unless the property applies in all (or at least the majority) of the situations where UserInfoCard is used. Avoid adding game specific or platform specific details here. In cases where UserInfoCard is a subset of the data needed in a contract, use UserInfoCard as a property of other contracts. */
	UserInfoCard lastModifiedBy;
	
	/** This contract supplies basic information commonly used to display a minimal amount of information about a user. Take care to not add more properties here unless the property applies in all (or at least the majority) of the situations where UserInfoCard is used. Avoid adding game specific or platform specific details here. In cases where UserInfoCard is a subset of the data needed in a contract, use UserInfoCard as a property of other contracts. */
	UserInfoCard createdBy;
	
	/**  */
	String dateBanned;
	
	/**  */
	String dateExpires;
	
	/**  */
	String comment;
	
	/** This contract supplies basic information commonly used to display a minimal amount of information about a user. Take care to not add more properties here unless the property applies in all (or at least the majority) of the situations where UserInfoCard is used. Avoid adding game specific or platform specific details here. In cases where UserInfoCard is a subset of the data needed in a contract, use UserInfoCard as a property of other contracts. */
	UserInfoCard bungieNetUserInfo;
	
	/** This contract supplies basic information commonly used to display a minimal amount of information about a user. Take care to not add more properties here unless the property applies in all (or at least the majority) of the situations where UserInfoCard is used. Avoid adding game specific or platform specific details here. In cases where UserInfoCard is a subset of the data needed in a contract, use UserInfoCard as a property of other contracts. */
	UserInfoCard destinyUserInfo;
	GroupBan(
		this.groupId,
		this.lastModifiedBy,
		this.createdBy,
		this.dateBanned,
		this.dateExpires,
		this.comment,
		this.bungieNetUserInfo,
		this.destinyUserInfo,
	);

	static GroupBan fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new GroupBan(
				data['groupId'],
				data['lastModifiedBy'] != null ? UserInfoCard.fromMap(data['lastModifiedBy']) : null,
				data['createdBy'] != null ? UserInfoCard.fromMap(data['createdBy']) : null,
				data['dateBanned'],
				data['dateExpires'],
				data['comment'],
				data['bungieNetUserInfo'] != null ? UserInfoCard.fromMap(data['bungieNetUserInfo']) : null,
				data['destinyUserInfo'] != null ? UserInfoCard.fromMap(data['destinyUserInfo']) : null,
		);
	}

	static List<GroupBan> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<GroupBan> list = new List();
    data.forEach((item) {
      list.add(GroupBan.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['groupId'] = this.groupId;
			data['lastModifiedBy'] = this.lastModifiedBy != null? this.lastModifiedBy.toMap() : null;
			data['createdBy'] = this.createdBy != null? this.createdBy.toMap() : null;
			data['dateBanned'] = this.dateBanned;
			data['dateExpires'] = this.dateExpires;
			data['comment'] = this.comment;
			data['bungieNetUserInfo'] = this.bungieNetUserInfo != null? this.bungieNetUserInfo.toMap() : null;
			data['destinyUserInfo'] = this.destinyUserInfo != null? this.destinyUserInfo.toMap() : null;
		return data;
	}
}