import 'user_info_card.dart';

/*  */
class GroupBan{
	
	/*  */
	String groupId;
	
	/*  */
	UserInfoCard lastModifiedBy;
	
	/*  */
	UserInfoCard createdBy;
	
	/*  */
	String dateBanned;
	
	/*  */
	String dateExpires;
	
	/*  */
	String comment;
	
	/*  */
	UserInfoCard bungieNetUserInfo;
	
	/*  */
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
			data['lastModifiedBy'] = this.lastModifiedBy.toMap();
			data['createdBy'] = this.createdBy.toMap();
			data['dateBanned'] = this.dateBanned;
			data['dateExpires'] = this.dateExpires;
			data['comment'] = this.comment;
			data['bungieNetUserInfo'] = this.bungieNetUserInfo.toMap();
			data['destinyUserInfo'] = this.destinyUserInfo.toMap();
		return data;
	}
}