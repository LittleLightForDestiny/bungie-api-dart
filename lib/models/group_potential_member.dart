import 'user_info_card.dart';
import 'user_info_card.dart';
class GroupPotentialMember{
	int potentialStatus;
	int groupId;
	UserInfoCard destinyUserInfo;
	UserInfoCard bungieNetUserInfo;
	String joinDate;
	GroupPotentialMember(
		int this.potentialStatus,
		int this.groupId,
		UserInfoCard this.destinyUserInfo,
		UserInfoCard this.bungieNetUserInfo,
		String this.joinDate,
	);

	static GroupPotentialMember fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new GroupPotentialMember(
				data['potentialStatus'],
				data['groupId'],
				UserInfoCard.fromMap(data['destinyUserInfo']),
				UserInfoCard.fromMap(data['bungieNetUserInfo']),
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
			data['destinyUserInfo'] = this.destinyUserInfo.toMap();
			data['bungieNetUserInfo'] = this.bungieNetUserInfo.toMap();
			data['joinDate'] = this.joinDate;
		return data;
	}
}