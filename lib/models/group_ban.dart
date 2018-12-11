import 'user_info_card.dart';
import 'user_info_card.dart';
import 'user_info_card.dart';
import 'user_info_card.dart';
class GroupBan{
	int groupId;
	UserInfoCard lastModifiedBy;
	UserInfoCard createdBy;
	String dateBanned;
	String dateExpires;
	String comment;
	UserInfoCard bungieNetUserInfo;
	UserInfoCard destinyUserInfo;
	GroupBan(
		int this.groupId,
		UserInfoCard this.lastModifiedBy,
		UserInfoCard this.createdBy,
		String this.dateBanned,
		String this.dateExpires,
		String this.comment,
		UserInfoCard this.bungieNetUserInfo,
		UserInfoCard this.destinyUserInfo,
	);

	static GroupBan fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new GroupBan(
				data['groupId'],
				UserInfoCard.fromJson(data['lastModifiedBy']),
				UserInfoCard.fromJson(data['createdBy']),
				data['dateBanned'],
				data['dateExpires'],
				data['comment'],
				UserInfoCard.fromJson(data['bungieNetUserInfo']),
				UserInfoCard.fromJson(data['destinyUserInfo']),
		);
	}

	static List<GroupBan> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<GroupBan> list = new List();
    data.forEach((item) {
      list.add(GroupBan.fromJson(item));
    });
    return list;
	}
}