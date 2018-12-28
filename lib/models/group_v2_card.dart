import 'group_v2_clan_info.dart';

/* A small infocard of group information, usually used for when a list of groups are returned */
class GroupV2Card{
	
	/*  */
	String groupId;
	
	/*  */
	String name;
	
	/*  */
	int groupType;
	
	/*  */
	String creationDate;
	
	/*  */
	String about;
	
	/*  */
	String motto;
	
	/*  */
	int memberCount;
	
	/*  */
	String locale;
	
	/*  */
	int membershipOption;
	
	/*  */
	int capabilities;
	
	/*  */
	GroupV2ClanInfo clanInfo;
	
	/*  */
	String avatarPath;
	
	/*  */
	String theme;
	GroupV2Card(
		this.groupId,
		this.name,
		this.groupType,
		this.creationDate,
		this.about,
		this.motto,
		this.memberCount,
		this.locale,
		this.membershipOption,
		this.capabilities,
		this.clanInfo,
		this.avatarPath,
		this.theme,
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
				data['clanInfo'] != null ? GroupV2ClanInfo.fromMap(data['clanInfo']) : null,
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
			data['groupId'] = this.groupId;
			data['name'] = this.name;
			data['groupType'] = this.groupType;
			data['creationDate'] = this.creationDate;
			data['about'] = this.about;
			data['motto'] = this.motto;
			data['memberCount'] = this.memberCount;
			data['locale'] = this.locale;
			data['membershipOption'] = this.membershipOption;
			data['capabilities'] = this.capabilities;
			data['clanInfo'] = this.clanInfo.toMap();
			data['avatarPath'] = this.avatarPath;
			data['theme'] = this.theme;
		return data;
	}
}