class GroupOptionsEditAction{
	bool invitePermissionOverride;
	bool updateCulturePermissionOverride;
	int hostGuidedGamePermissionOverride;
	bool updateBannerPermissionOverride;
	int joinLevel;
	GroupOptionsEditAction(
		this.invitePermissionOverride,
		this.updateCulturePermissionOverride,
		this.hostGuidedGamePermissionOverride,
		this.updateBannerPermissionOverride,
		this.joinLevel,
	);

	static GroupOptionsEditAction fromMap(Map<String, dynamic> data){
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
      list.add(GroupOptionsEditAction.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['InvitePermissionOverride'] = this.invitePermissionOverride;
			data['UpdateCulturePermissionOverride'] = this.updateCulturePermissionOverride;
			data['HostGuidedGamePermissionOverride'] = this.hostGuidedGamePermissionOverride;
			data['UpdateBannerPermissionOverride'] = this.updateBannerPermissionOverride;
			data['JoinLevel'] = this.joinLevel;
		return data;
	}
}