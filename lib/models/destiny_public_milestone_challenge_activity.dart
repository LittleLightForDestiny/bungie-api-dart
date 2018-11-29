class DestinyPublicMilestoneChallengeActivity{
	int activityHash;
	List<int> challengeObjectiveHashes;
	List<int> modifierHashes;
	int loadoutRequirementIndex;
	DestinyPublicMilestoneChallengeActivity(
		int this.activityHash,
		List<int> this.challengeObjectiveHashes,
		List<int> this.modifierHashes,
		int this.loadoutRequirementIndex,
	);

	static DestinyPublicMilestoneChallengeActivity fromJson(Map<String, dynamic> data){
		return new DestinyPublicMilestoneChallengeActivity(
				data['activityHash'],
				data['challengeObjectiveHashes'],
				data['modifierHashes'],
				data['loadoutRequirementIndex'],
		);
	}

	static List<DestinyPublicMilestoneChallengeActivity> fromList(List<dynamic> data){
		List<DestinyPublicMilestoneChallengeActivity> list = new List();
    data.forEach((item) {
      list.add(DestinyPublicMilestoneChallengeActivity.fromJson(item));
    });
    return list;
	}
}