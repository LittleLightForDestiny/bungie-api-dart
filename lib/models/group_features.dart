class GroupFeatures{
	int maximumMembers;
	int maximumMembershipsOfGroupType;
	int capabilities;
	List<int> membershipTypes;
	bool invitePermissionOverride;
	bool updateCulturePermissionOverride;
	int hostGuidedGamePermissionOverride;
	bool updateBannerPermissionOverride;
	int joinLevel;
	GroupFeatures(
		this.maximumMembers,
		this.maximumMembershipsOfGroupType,
		this.capabilities,
		this.membershipTypes,
		this.invitePermissionOverride,
		this.updateCulturePermissionOverride,
		this.hostGuidedGamePermissionOverride,
		this.updateBannerPermissionOverride,
		this.joinLevel,
	);

	static GroupFeatures fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new GroupFeatures(
				data['maximumMembers'],
				data['maximumMembershipsOfGroupType'],
				data['capabilities'],
				data['membershipTypes'],
				data['invitePermissionOverride'],
				data['updateCulturePermissionOverride'],
				data['hostGuidedGamePermissionOverride'],
				data['updateBannerPermissionOverride'],
				data['joinLevel'],
		);
	}

	static List<GroupFeatures> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<GroupFeatures> list = new List();
    data.forEach((item) {
      list.add(GroupFeatures.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['maximumMembers'] = this.maximumMembers;
			data['maximumMembershipsOfGroupType'] = this.maximumMembershipsOfGroupType;
			data['capabilities'] = this.capabilities;
			data['membershipTypes'] = this.membershipTypes;
			data['invitePermissionOverride'] = this.invitePermissionOverride;
			data['updateCulturePermissionOverride'] = this.updateCulturePermissionOverride;
			data['hostGuidedGamePermissionOverride'] = this.hostGuidedGamePermissionOverride;
			data['updateBannerPermissionOverride'] = this.updateBannerPermissionOverride;
			data['joinLevel'] = this.joinLevel;
		return data;
	}
}