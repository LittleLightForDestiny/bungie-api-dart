class DestinyMilestoneChallengeDefinition{
	int challengeObjectiveHash;
	DestinyMilestoneChallengeDefinition(
		int this.challengeObjectiveHash,
	);

	static DestinyMilestoneChallengeDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyMilestoneChallengeDefinition(
				data['challengeObjectiveHash'],
		);
	}

	static List<DestinyMilestoneChallengeDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyMilestoneChallengeDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyMilestoneChallengeDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['challengeObjectiveHash'] = challengeObjectiveHash;
	}
}