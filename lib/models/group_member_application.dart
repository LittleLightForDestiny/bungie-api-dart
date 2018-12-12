import 'user_info_card.dart';
import 'user_info_card.dart';
class GroupMemberApplication{
	int groupId;
	String creationDate;
	int resolveState;
	String resolveDate;
	int resolvedByMembershipId;
	String requestMessage;
	String resolveMessage;
	UserInfoCard destinyUserInfo;
	UserInfoCard bungieNetUserInfo;
	GroupMemberApplication(
		int this.groupId,
		String this.creationDate,
		int this.resolveState,
		String this.resolveDate,
		int this.resolvedByMembershipId,
		String this.requestMessage,
		String this.resolveMessage,
		UserInfoCard this.destinyUserInfo,
		UserInfoCard this.bungieNetUserInfo,
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
				UserInfoCard.fromMap(data['destinyUserInfo']),
				UserInfoCard.fromMap(data['bungieNetUserInfo']),
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