class GroupAction{
	int groupType;
	String name;
	String about;
	String motto;
	String theme;
	int avatarImageIndex;
	String tags;
	bool isPublic;
	int membershipOption;
	bool isPublicTopicAdminOnly;
	bool isDefaultPostPublic;
	bool allowChat;
	bool isDefaultPostAlliance;
	int chatSecurity;
	String callsign;
	String locale;
	int homepage;
	int platformMembershipType;
	GroupAction(
		int this.groupType,
		String this.name,
		String this.about,
		String this.motto,
		String this.theme,
		int this.avatarImageIndex,
		String this.tags,
		bool this.isPublic,
		int this.membershipOption,
		bool this.isPublicTopicAdminOnly,
		bool this.isDefaultPostPublic,
		bool this.allowChat,
		bool this.isDefaultPostAlliance,
		int this.chatSecurity,
		String this.callsign,
		String this.locale,
		int this.homepage,
		int this.platformMembershipType,
	);

	static GroupAction fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new GroupAction(
				data['groupType'],
				data['name'],
				data['about'],
				data['motto'],
				data['theme'],
				data['avatarImageIndex'],
				data['tags'],
				data['isPublic'],
				data['membershipOption'],
				data['isPublicTopicAdminOnly'],
				data['isDefaultPostPublic'],
				data['allowChat'],
				data['isDefaultPostAlliance'],
				data['chatSecurity'],
				data['callsign'],
				data['locale'],
				data['homepage'],
				data['platformMembershipType'],
		);
	}

	static List<GroupAction> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<GroupAction> list = new List();
    data.forEach((item) {
      list.add(GroupAction.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['groupType'] = this.groupType;
			data['name'] = this.name;
			data['about'] = this.about;
			data['motto'] = this.motto;
			data['theme'] = this.theme;
			data['avatarImageIndex'] = this.avatarImageIndex;
			data['tags'] = this.tags;
			data['isPublic'] = this.isPublic;
			data['membershipOption'] = this.membershipOption;
			data['isPublicTopicAdminOnly'] = this.isPublicTopicAdminOnly;
			data['isDefaultPostPublic'] = this.isDefaultPostPublic;
			data['allowChat'] = this.allowChat;
			data['isDefaultPostAlliance'] = this.isDefaultPostAlliance;
			data['chatSecurity'] = this.chatSecurity;
			data['callsign'] = this.callsign;
			data['locale'] = this.locale;
			data['homepage'] = this.homepage;
			data['platformMembershipType'] = this.platformMembershipType;
		return data;
	}
}