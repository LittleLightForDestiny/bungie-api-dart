class DestinyMilestoneChallengeActivityGraphNodeEntry{
	int activityGraphHash;
	int activityGraphNodeHash;
	DestinyMilestoneChallengeActivityGraphNodeEntry(
		int this.activityGraphHash,
		int this.activityGraphNodeHash,
	);

	static DestinyMilestoneChallengeActivityGraphNodeEntry fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyMilestoneChallengeActivityGraphNodeEntry(
				data['activityGraphHash'],
				data['activityGraphNodeHash'],
		);
	}

	static List<DestinyMilestoneChallengeActivityGraphNodeEntry> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyMilestoneChallengeActivityGraphNodeEntry> list = new List();
    data.forEach((item) {
      list.add(DestinyMilestoneChallengeActivityGraphNodeEntry.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['activityGraphHash'] = activityGraphHash;
			data['activityGraphNodeHash'] = activityGraphNodeHash;
	}
}