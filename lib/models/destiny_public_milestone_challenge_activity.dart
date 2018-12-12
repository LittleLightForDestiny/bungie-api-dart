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

	static DestinyPublicMilestoneChallengeActivity fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyPublicMilestoneChallengeActivity(
				data['activityHash'],
				data['challengeObjectiveHashes'],
				data['modifierHashes'],
				data['loadoutRequirementIndex'],
		);
	}

	static List<DestinyPublicMilestoneChallengeActivity> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyPublicMilestoneChallengeActivity> list = new List();
    data.forEach((item) {
      list.add(DestinyPublicMilestoneChallengeActivity.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['activityHash'] = activityHash;
			data['challengeObjectiveHashes'] = challengeObjectiveHashes;
			data['modifierHashes'] = modifierHashes;
			data['loadoutRequirementIndex'] = loadoutRequirementIndex;
	}
}