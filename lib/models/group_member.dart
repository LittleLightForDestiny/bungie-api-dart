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

	static GroupMember fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new GroupMember(
				data['memberType'],
				data['isOnline'],
				data['groupId'],
				UserInfoCard.fromMap(data['destinyUserInfo']),
				UserInfoCard.fromMap(data['bungieNetUserInfo']),
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
			data['memberType'] = memberType;
			data['isOnline'] = isOnline;
			data['groupId'] = groupId;
			data['destinyUserInfo'] = destinyUserInfo.toMap();
			data['bungieNetUserInfo'] = bungieNetUserInfo.toMap();
			data['joinDate'] = joinDate;
	}
}