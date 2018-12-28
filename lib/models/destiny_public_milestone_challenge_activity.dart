
/**  */
class DestinyPublicMilestoneChallengeActivity{
	
	/**  */
	int activityHash;
	
	/**  */
	List<int> challengeObjectiveHashes;
	
	/** If the activity has modifiers, this will be the list of modifiers that all variants have in common. Perform lookups against DestinyActivityModifierDefinition which defines the modifier being applied to get at the modifier data.
Note that, in the DestiyActivityDefinition, you will see many more modifiers than this being referred to: those are all *possible* modifiers for the activity, not the active ones. Use only the active ones to match what's really live. */
	List<int> modifierHashes;
	
	/** If returned, this is the index into the DestinyActivityDefinition's "loadouts" property, indicating the currently active loadout requirements. */
	int loadoutRequirementIndex;
	
	/** The ordered list of phases for this activity, if any. Note that we have no human readable info for phases, nor any entities to relate them to: relating these hashes to something human readable is up to you unfortunately. */
	List<int> phaseHashes;
	
	/** The set of activity options for this activity, keyed by an identifier that's unique for this activity (not guaranteed to be unique between or across all activities, though should be unique for every *variant* of a given *conceptual* activity: for instance, the original D2 Raid has many variant DestinyActivityDefinitions. While other activities could potentially have the same option hashes, for any given D2 base Raid variant the hash will be unique).
As a concrete example of this data, the hashes you get for Raids will correspond to the currently active "Challenge Mode".
We have no human readable information for this data, so it's up to you if you want to associate it with such info to show it. */
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