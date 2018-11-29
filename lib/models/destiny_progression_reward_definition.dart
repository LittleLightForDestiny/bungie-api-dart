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
		return new DestinyProgressionRewardDefinition(
				data['progressionMappingHash'],
				data['amount'],
				data['applyThrottles'],
		);
	}

	static List<DestinyProgressionRewardDefinition> fromList(List<dynamic> data){
		List<DestinyProgressionRewardDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyProgressionRewardDefinition.fromJson(item));
    });
    return list;
	}
}