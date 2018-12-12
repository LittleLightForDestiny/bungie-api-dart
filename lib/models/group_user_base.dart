import 'user_info_card.dart';
import 'user_info_card.dart';
class GroupUserBase{
	String groupId;
	UserInfoCard destinyUserInfo;
	UserInfoCard bungieNetUserInfo;
	String joinDate;
	GroupUserBase(
		String this.groupId,
		UserInfoCard this.destinyUserInfo,
		UserInfoCard this.bungieNetUserInfo,
		String this.joinDate,
	);

	static GroupUserBase fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new GroupUserBase(
				data['groupId'],
				UserInfoCard.fromMap(data['destinyUserInfo']),
				UserInfoCard.fromMap(data['bungieNetUserInfo']),
				data['joinDate'],
		);
	}

	static List<GroupUserBase> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<GroupUserBase> list = new List();
    data.forEach((item) {
      list.add(GroupUserBase.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['groupId'] = this.groupId;
			data['destinyUserInfo'] = this.destinyUserInfo.toMap();
			data['bungieNetUserInfo'] = this.bungieNetUserInfo.toMap();
			data['joinDate'] = this.joinDate;
		return data;
	}
}