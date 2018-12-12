class FireteamSummary{
	int fireteamId;
	int groupId;
	int platform;
	int activityType;
	bool isImmediate;
	String scheduledTime;
	int ownerMembershipId;
	int playerSlotCount;
	int alternateSlotCount;
	int availablePlayerSlotCount;
	int availableAlternateSlotCount;
	String title;
	String dateCreated;
	String dateModified;
	bool isPublic;
	String locale;
	bool isValid;
	String datePlayerModified;
	FireteamSummary(
		int this.fireteamId,
		int this.groupId,
		int this.platform,
		int this.activityType,
		bool this.isImmediate,
		String this.scheduledTime,
		int this.ownerMembershipId,
		int this.playerSlotCount,
		int this.alternateSlotCount,
		int this.availablePlayerSlotCount,
		int this.availableAlternateSlotCount,
		String this.title,
		String this.dateCreated,
		String this.dateModified,
		bool this.isPublic,
		String this.locale,
		bool this.isValid,
		String this.datePlayerModified,
	);

	static FireteamSummary fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new FireteamSummary(
				data['fireteamId'],
				data['groupId'],
				data['platform'],
				data['activityType'],
				data['isImmediate'],
				data['scheduledTime'],
				data['ownerMembershipId'],
				data['playerSlotCount'],
				data['alternateSlotCount'],
				data['availablePlayerSlotCount'],
				data['availableAlternateSlotCount'],
				data['title'],
				data['dateCreated'],
				data['dateModified'],
				data['isPublic'],
				data['locale'],
				data['isValid'],
				data['datePlayerModified'],
		);
	}

	static List<FireteamSummary> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<FireteamSummary> list = new List();
    data.forEach((item) {
      list.add(FireteamSummary.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['fireteamId'] = fireteamId;
			data['groupId'] = groupId;
			data['platform'] = platform;
			data['activityType'] = activityType;
			data['isImmediate'] = isImmediate;
			data['scheduledTime'] = scheduledTime;
			data['ownerMembershipId'] = ownerMembershipId;
			data['playerSlotCount'] = playerSlotCount;
			data['alternateSlotCount'] = alternateSlotCount;
			data['availablePlayerSlotCount'] = availablePlayerSlotCount;
			data['availableAlternateSlotCount'] = availableAlternateSlotCount;
			data['title'] = title;
			data['dateCreated'] = dateCreated;
			data['dateModified'] = dateModified;
			data['isPublic'] = isPublic;
			data['locale'] = locale;
			data['isValid'] = isValid;
			data['datePlayerModified'] = datePlayerModified;
	}
}