import 'user_info_card.dart';
import 'user_info_card.dart';
class GroupMemberApplication{
	String groupId;
	String creationDate;
	int resolveState;
	String resolveDate;
	String resolvedByMembershipId;
	String requestMessage;
	String resolveMessage;
	UserInfoCard destinyUserInfo;
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
			data['destinyUserInfo'] = this.destinyUserInfo.toMap();
			data['bungieNetUserInfo'] = this.bungieNetUserInfo.toMap();
		return data;
	}
}