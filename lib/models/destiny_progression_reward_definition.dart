class DestinyProgressionRewardDefinition{
	int progressionMappingHash;
	int amount;
	bool applyThrottles;
	DestinyProgressionRewardDefinition(
		int this.progressionMappingHash,
		int this.amount,
		bool this.applyThrottles,
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