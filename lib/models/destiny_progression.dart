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

	static DestinyProgression fromMap(Map<String, dynamic> data){
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
      list.add(DestinyProgression.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['progressionHash'] = progressionHash;
			data['dailyProgress'] = dailyProgress;
			data['dailyLimit'] = dailyLimit;
			data['weeklyProgress'] = weeklyProgress;
			data['weeklyLimit'] = weeklyLimit;
			data['currentProgress'] = currentProgress;
			data['level'] = level;
			data['levelCap'] = levelCap;
			data['stepIndex'] = stepIndex;
			data['progressToNextLevel'] = progressToNextLevel;
			data['nextLevelAt'] = nextLevelAt;
	}
}