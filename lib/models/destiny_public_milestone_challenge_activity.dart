class DestinyPublicMilestoneChallengeActivity{
	int activityHash;
	List<int> challengeObjectiveHashes;
	List<int> modifierHashes;
	int loadoutRequirementIndex;
	List<int> phaseHashes;
	Map<String, bool> booleanActivityOptions;
	DestinyPublicMilestoneChallengeActivity(
		this.activityHash,
		this.challengeObjectiveHashes,
		this.modifierHashes,
		this.loadoutRequirementIndex,
		this.phaseHashes,
		this.booleanActivityOptions,
	);

	static DestinyPublicMilestoneChallengeActivity fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyPublicMilestoneChallengeActivity(
				data['activityHash'],
				data['challengeObjectiveHashes'] != null ? data['challengeObjectiveHashes']?.cast<int>() ?? null : null,
				data['modifierHashes'] != null ? data['modifierHashes']?.cast<int>() ?? null : null,
				data['loadoutRequirementIndex'],
				data['phaseHashes'] != null ? data['phaseHashes']?.cast<int>() ?? null : null,
				data['booleanActivityOptions'] != null ? Map<String, bool>.from(data['booleanActivityOptions'].map((k, v)=>MapEntry(k, v))) : null,
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
			data['activityHash'] = this.activityHash;
			data['challengeObjectiveHashes'] = this.challengeObjectiveHashes;
			data['modifierHashes'] = this.modifierHashes;
			data['loadoutRequirementIndex'] = this.loadoutRequirementIndex;
			data['phaseHashes'] = this.phaseHashes;
			data['booleanActivityOptions'] = this.booleanActivityOptions;
		return data;
	}
}