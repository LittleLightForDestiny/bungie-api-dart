class DestinyMilestoneChallengeDefinition{
	int challengeObjectiveHash;
	DestinyMilestoneChallengeDefinition(
		int this.challengeObjectiveHash,
	);

	static DestinyMilestoneChallengeDefinition fromJson(Map<String, dynamic> data){
		return new DestinyMilestoneChallengeDefinition(
				data['challengeObjectiveHash'],
		);
	}

	static List<DestinyMilestoneChallengeDefinition> fromList(List<dynamic> data){
		List<DestinyMilestoneChallengeDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyMilestoneChallengeDefinition.fromJson(item));
    });
    return list;
	}
}