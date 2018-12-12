import 'group_v2_clan_info.dart';
class GroupV2Card{
	int groupId;
	String name;
	int groupType;
	String creationDate;
	String about;
	String motto;
	int memberCount;
	String locale;
	int membershipOption;
	int capabilities;
	GroupV2ClanInfo clanInfo;
	String avatarPath;
	String theme;
	GroupV2Card(
		int this.groupId,
		String this.name,
		int this.groupType,
		String this.creationDate,
		String this.about,
		String this.motto,
		int this.memberCount,
		String this.locale,
		int this.membershipOption,
		int this.capabilities,
		GroupV2ClanInfo this.clanInfo,
		String this.avatarPath,
		String this.theme,
	);

	static GroupV2Card fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new GroupV2Card(
				data['groupId'],
				data['name'],
				data['groupType'],
				data['creationDate'],
				data['about'],
				data['motto'],
				data['memberCount'],
				data['locale'],
				data['membershipOption'],
				data['capabilities'],
				GroupV2ClanInfo.fromMap(data['clanInfo']),
				data['avatarPath'],
				data['theme'],
		);
	}

	static List<GroupV2Card> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<GroupV2Card> list = new List();
    data.forEach((item) {
      list.add(GroupV2Card.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['groupId'] = groupId;
			data['name'] = name;
			data['groupType'] = groupType;
			data['creationDate'] = creationDate;
			data['about'] = about;
			data['motto'] = motto;
			data['memberCount'] = memberCount;
			data['locale'] = locale;
			data['membershipOption'] = membershipOption;
			data['capabilities'] = capabilities;
			data['clanInfo'] = clanInfo.toMap();
			data['avatarPath'] = avatarPath;
			data['theme'] = theme;
	}
}