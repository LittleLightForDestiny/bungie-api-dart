
/** Inventory Items can reward progression when actions are performed on them. A common example of this in Destiny 1 was Bounties, which would reward Experience on your Character and the like when you completed the bounty.
Note that this maps to a DestinyProgressionMappingDefinition, and *not* a DestinyProgressionDefinition directly. This is apparently so that multiple progressions can be granted progression points/experience at the same time. */
class DestinyProgressionRewardDefinition{
	
	/** The hash identifier of the DestinyProgressionMappingDefinition that contains the progressions for which experience should be applied. */
	int progressionMappingHash;
	
	/** The amount of experience to give to each of the mapped progressions. */
	int amount;
	
	/** If true, the game's internal mechanisms to throttle progression should be applied. */
	bool applyThrottles;
	DestinyProgressionRewardDefinition(
		this.progressionMappingHash,
		this.amount,
		this.applyThrottles,
	);

	static DestinyProgressionRewardDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyProgressionRewardDefinition(
				data['progressionMappingHash'],
				data['amount'],
				data['applyThrottles'],
		);
	}

	static List<DestinyProgressionRewardDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyProgressionRewardDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyProgressionRewardDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['progressionMappingHash'] = this.progressionMappingHash;
			data['amount'] = this.amount;
			data['applyThrottles'] = this.applyThrottles;
		return data;
	}
}