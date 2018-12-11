class DestinyLeaderboardResults{
	int focusMembershipId;
	int focusCharacterId;
	DestinyLeaderboardResults(
		int this.focusMembershipId,
		int this.focusCharacterId,
	);

	static DestinyLeaderboardResults fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyLeaderboardResults(
				data['focusMembershipId'],
				data['focusCharacterId'],
		);
	}

	static List<DestinyLeaderboardResults> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyLeaderboardResults> list = new List();
    data.forEach((item) {
      list.add(DestinyLeaderboardResults.fromJson(item));
    });
    return list;
	}
}