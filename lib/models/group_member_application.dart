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

	static GroupMemberApplication fromJson(Map<String, dynamic> data){
		return new GroupMemberApplication(
				data['groupId'],
				data['creationDate'],
				data['resolveState'],
				data['resolveDate'],
				data['resolvedByMembershipId'],
				data['requestMessage'],
				data['resolveMessage'],
				UserInfoCard.fromJson(data['destinyUserInfo']),
				UserInfoCard.fromJson(data['bungieNetUserInfo']),
		);
	}

	static List<GroupMemberApplication> fromList(List<dynamic> data){
		List<GroupMemberApplication> list = new List();
    data.forEach((item) {
      list.add(GroupMemberApplication.fromJson(item));
    });
    return list;
	}
}