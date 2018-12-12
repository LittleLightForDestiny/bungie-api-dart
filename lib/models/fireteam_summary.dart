class FireteamSummary{
	String fireteamId;
	String groupId;
	int platform;
	int activityType;
	bool isImmediate;
	String scheduledTime;
	String ownerMembershipId;
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
		String this.fireteamId,
		String this.groupId,
		int this.platform,
		int this.activityType,
		bool this.isImmediate,
		String this.scheduledTime,
		String this.ownerMembershipId,
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
			data['fireteamId'] = this.fireteamId;
			data['groupId'] = this.groupId;
			data['platform'] = this.platform;
			data['activityType'] = this.activityType;
			data['isImmediate'] = this.isImmediate;
			data['scheduledTime'] = this.scheduledTime;
			data['ownerMembershipId'] = this.ownerMembershipId;
			data['playerSlotCount'] = this.playerSlotCount;
			data['alternateSlotCount'] = this.alternateSlotCount;
			data['availablePlayerSlotCount'] = this.availablePlayerSlotCount;
			data['availableAlternateSlotCount'] = this.availableAlternateSlotCount;
			data['title'] = this.title;
			data['dateCreated'] = this.dateCreated;
			data['dateModified'] = this.dateModified;
			data['isPublic'] = this.isPublic;
			data['locale'] = this.locale;
			data['isValid'] = this.isValid;
			data['datePlayerModified'] = this.datePlayerModified;
		return data;
	}
}