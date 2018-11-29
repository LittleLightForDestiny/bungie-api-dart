import 'user_info_card.dart';
import 'user_info_card.dart';
class GroupUserBase{
	int groupId;
	UserInfoCard destinyUserInfo;
	UserInfoCard bungieNetUserInfo;
	String joinDate;
	GroupUserBase(
		int this.groupId,
		UserInfoCard this.destinyUserInfo,
		UserInfoCard this.bungieNetUserInfo,
		String this.joinDate,
	);

	static GroupUserBase fromJson(Map<String, dynamic> data){
		return new GroupUserBase(
				data['groupId'],
				UserInfoCard.fromJson(data['destinyUserInfo']),
				UserInfoCard.fromJson(data['bungieNetUserInfo']),
				data['joinDate'],
		);
	}

	static List<GroupUserBase> fromList(List<dynamic> data){
		List<GroupUserBase> list = new List();
    data.forEach((item) {
      list.add(GroupUserBase.fromJson(item));
    });
    return list;
	}
}