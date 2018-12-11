class DestinyFactionProgression{
	int factionHash;
	int factionVendorIndex;
	int progressionHash;
	int dailyProgress;
	int dailyLimit;
	int weeklyProgress;
	int weeklyLimit;
	int currentProgress;
	int level;
	int levelCap;
	int stepIndex;
	int progressToNextLevel;
	int nextLevelAt;
	DestinyFactionProgression(
		int this.factionHash,
		int this.factionVendorIndex,
		int this.progressionHash,
		int this.dailyProgress,
		int this.dailyLimit,
		int this.weeklyProgress,
		int this.weeklyLimit,
		int this.currentProgress,
		int this.level,
		int this.levelCap,
		int this.stepIndex,
		int this.progressToNextLevel,
		int this.nextLevelAt,
	);

	static DestinyFactionProgression fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyFactionProgression(
				data['factionHash'],
				data['factionVendorIndex'],
				data['progressionHash'],
				data['dailyProgress'],
				data['dailyLimit'],
				data['weeklyProgress'],
				data['weeklyLimit'],
				data['currentProgress'],
				data['level'],
				data['levelCap'],
				data['stepIndex'],
				data['progressToNextLevel'],
				data['nextLevelAt'],
		);
	}

	static List<DestinyFactionProgression> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyFactionProgression> list = new List();
    data.forEach((item) {
      list.add(DestinyFactionProgression.fromJson(item));
    });
    return list;
	}
}