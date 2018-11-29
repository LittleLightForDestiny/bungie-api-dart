class GroupOptionsEditAction{
	bool InvitePermissionOverride;
	bool UpdateCulturePermissionOverride;
	int HostGuidedGamePermissionOverride;
	bool UpdateBannerPermissionOverride;
	int JoinLevel;
	GroupOptionsEditAction(
		bool this.InvitePermissionOverride,
		bool this.UpdateCulturePermissionOverride,
		int this.HostGuidedGamePermissionOverride,
		bool this.UpdateBannerPermissionOverride,
		int this.JoinLevel,
	);

	static GroupOptionsEditAction fromJson(Map<String, dynamic> data){
		return new GroupOptionsEditAction(
				data['InvitePermissionOverride'],
				data['UpdateCulturePermissionOverride'],
				data['HostGuidedGamePermissionOverride'],
				data['UpdateBannerPermissionOverride'],
				data['JoinLevel'],
		);
	}

	static List<GroupOptionsEditAction> fromList(List<dynamic> data){
		List<GroupOptionsEditAction> list = new List();
    data.forEach((item) {
      list.add(GroupOptionsEditAction.fromJson(item));
    });
    return list;
	}
}