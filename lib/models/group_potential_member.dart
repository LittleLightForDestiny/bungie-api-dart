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

	static GroupPotentialMember fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new GroupPotentialMember(
				data['potentialStatus'],
				data['groupId'],
				UserInfoCard.fromJson(data['destinyUserInfo']),
				UserInfoCard.fromJson(data['bungieNetUserInfo']),
				data['joinDate'],
		);
	}

	static List<GroupPotentialMember> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<GroupPotentialMember> list = new List();
    data.forEach((item) {
      list.add(GroupPotentialMember.fromJson(item));
    });
    return list;
	}
}