
/*  */
class DestinyLeaderboardResults{
	
	/* Indicate the membership ID of the account that is the focal point of the provided leaderboards. */
	String focusMembershipId;
	
	/* Indicate the character ID of the character that is the focal point of the provided leaderboards. May be null, in which case any character from the focus membership can appear in the provided leaderboards. */
	String focusCharacterId;
	DestinyLeaderboardResults(
		this.focusMembershipId,
		this.focusCharacterId,
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