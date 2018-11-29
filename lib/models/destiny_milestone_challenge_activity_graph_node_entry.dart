class DestinyMilestoneChallengeActivityGraphNodeEntry{
	int activityGraphHash;
	int activityGraphNodeHash;
	DestinyMilestoneChallengeActivityGraphNodeEntry(
		int this.activityGraphHash,
		int this.activityGraphNodeHash,
	);

	static DestinyMilestoneChallengeActivityGraphNodeEntry fromJson(Map<String, dynamic> data){
		return new DestinyMilestoneChallengeActivityGraphNodeEntry(
				data['activityGraphHash'],
				data['activityGraphNodeHash'],
		);
	}

	static List<DestinyMilestoneChallengeActivityGraphNodeEntry> fromList(List<dynamic> data){
		List<DestinyMilestoneChallengeActivityGraphNodeEntry> list = new List();
    data.forEach((item) {
      list.add(DestinyMilestoneChallengeActivityGraphNodeEntry.fromJson(item));
    });
    return list;
	}
}