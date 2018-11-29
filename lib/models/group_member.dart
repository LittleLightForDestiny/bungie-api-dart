import 'user_info_card.dart';
import 'user_info_card.dart';
class GroupMember{
	int memberType;
	bool isOnline;
	int groupId;
	UserInfoCard destinyUserInfo;
	UserInfoCard bungieNetUserInfo;
	String joinDate;
	GroupMember(
		int this.memberType,
		bool this.isOnline,
		int this.groupId,
		UserInfoCard this.destinyUserInfo,
		UserInfoCard this.bungieNetUserInfo,
		String this.joinDate,
	);

	static GroupMember fromJson(Map<String, dynamic> data){
		return new GroupMember(
				data['memberType'],
				data['isOnline'],
				data['groupId'],
				UserInfoCard.fromJson(data['destinyUserInfo']),
				UserInfoCard.fromJson(data['bungieNetUserInfo']),
				data['joinDate'],
		);
	}

	static List<GroupMember> fromList(List<dynamic> data){
		List<GroupMember> list = new List();
    data.forEach((item) {
      list.add(GroupMember.fromJson(item));
    });
    return list;
	}
}