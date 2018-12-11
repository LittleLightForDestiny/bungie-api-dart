class GroupOptionsEditAction{
	bool invitePermissionOverride;
	bool updateCulturePermissionOverride;
	int hostGuidedGamePermissionOverride;
	bool updateBannerPermissionOverride;
	int joinLevel;
	GroupOptionsEditAction(
		bool this.invitePermissionOverride,
		bool this.updateCulturePermissionOverride,
		int this.hostGuidedGamePermissionOverride,
		bool this.updateBannerPermissionOverride,
		int this.joinLevel,
	);

	static GroupOptionsEditAction fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new GroupOptionsEditAction(
				data['InvitePermissionOverride'],
				data['UpdateCulturePermissionOverride'],
				data['HostGuidedGamePermissionOverride'],
				data['UpdateBannerPermissionOverride'],
				data['JoinLevel'],
		);
	}

	static List<GroupOptionsEditAction> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<GroupOptionsEditAction> list = new List();
    data.forEach((item) {
      list.add(GroupOptionsEditAction.fromJson(item));
    });
    return list;
	}
}