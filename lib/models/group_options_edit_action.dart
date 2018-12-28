
/**  */
class GroupOptionsEditAction{
	
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