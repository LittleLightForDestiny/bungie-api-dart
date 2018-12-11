class DestinyProgression{
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
	DestinyProgression(
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

	static DestinyProgression fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyProgression(
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

	static List<DestinyProgression> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyProgression> list = new List();
    data.forEach((item) {
      list.add(DestinyProgression.fromJson(item));
    });
    return list;
	}
}