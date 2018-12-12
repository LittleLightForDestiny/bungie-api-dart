class DestinyLeaderboardResults{
	int focusMembershipId;
	int focusCharacterId;
	DestinyLeaderboardResults(
		int this.focusMembershipId,
		int this.focusCharacterId,
	);

	static DestinyLeaderboardResults fromMap(Map<String, dynamic> data){
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
      list.add(DestinyLeaderboardResults.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['focusMembershipId'] = this.focusMembershipId;
			data['focusCharacterId'] = this.focusCharacterId;
		return data;
	}
}