class GroupEditAction{
	String name;
	String about;
	String motto;
	String theme;
	int avatarImageIndex;
	String tags;
	bool isPublic;
	int membershipOption;
	bool isPublicTopicAdminOnly;
	bool allowChat;
	int chatSecurity;
	String callsign;
	String locale;
	int homepage;
	bool enableInvitationMessagingForAdmins;
	int defaultPublicity;
	GroupEditAction(
		String this.name,
		String this.about,
		String this.motto,
		String this.theme,
		int this.avatarImageIndex,
		String this.tags,
		bool this.isPublic,
		int this.membershipOption,
		bool this.isPublicTopicAdminOnly,
		bool this.allowChat,
		int this.chatSecurity,
		String this.callsign,
		String this.locale,
		int this.homepage,
		bool this.enableInvitationMessagingForAdmins,
		int this.defaultPublicity,
	);

	static GroupEditAction fromJson(Map<String, dynamic> data){
		return new GroupEditAction(
				data['name'],
				data['about'],
				data['motto'],
				data['theme'],
				data['avatarImageIndex'],
				data['tags'],
				data['isPublic'],
				data['membershipOption'],
				data['isPublicTopicAdminOnly'],
				data['allowChat'],
				data['chatSecurity'],
				data['callsign'],
				data['locale'],
				data['homepage'],
				data['enableInvitationMessagingForAdmins'],
				data['defaultPublicity'],
		);
	}

	static List<GroupEditAction> fromList(List<dynamic> data){
		List<GroupEditAction> list = new List();
    data.forEach((item) {
      list.add(GroupEditAction.fromJson(item));
    });
    return list;
	}
}