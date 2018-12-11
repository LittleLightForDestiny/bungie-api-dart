class DestinyProgressionRewardDefinition{
	int progressionMappingHash;
	int amount;
	bool applyThrottles;
	DestinyProgressionRewardDefinition(
		int this.progressionMappingHash,
		int this.amount,
		bool this.applyThrottles,
	);

	static DestinyProgressionRewardDefinition fromJson(Map<String, dynamic> data){
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
      list.add(DestinyProgressionRewardDefinition.fromJson(item));
    });
    return list;
	}
}