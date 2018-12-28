
/**  */
class GroupFeatures{
	
	/**  */
	int maximumMembers;
	
	/** Maximum number of groups of this type a typical membership may join. For example, a user may join about 50 General groups with their Bungie.net account. They may join one clan per Destiny membership. */
	int maximumMembershipsOfGroupType;
	
	/**  */
	int capabilities;
	
	/**  */
	List<int> membershipTypes;
	
	/** Minimum Member Level allowed to invite new members to group
Always Allowed: Founder, Acting Founder
True means admins have this power, false means they don't
Default is false for clans, true for groups. */
	bool invitePermissionOverride;
	
	/** Minimum Member Level allowed to update group culture
Always Allowed: Founder, Acting Founder
True means admins have this power, false means they don't
Default is false for clans, true for groups. */
	bool updateCulturePermissionOverride;
	
	/** Minimum Member Level allowed to host guided games
Always Allowed: Founder, Acting Founder, Admin
Allowed Overrides: None, Member, Beginner
Default is Member for clans, None for groups, although this means nothing for groups. */
	int hostGuidedGamePermissionOverride;
	
	/** Minimum Member Level allowed to update banner
Always Allowed: Founder, Acting Founder
True means admins have this power, false means they don't
Default is false for clans, true for groups. */
	bool updateBannerPermissionOverride;
	
	/** Level to join a member at when accepting an invite, application, or joining an open clan
Default is Beginner. */
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
				data['membershipTypes'] != null ? data['membershipTypes']?.cast<int>() ?? null : null,
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