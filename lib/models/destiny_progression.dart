
/** Information about a current character's status with a Progression. A progression is a value that can increase with activity and has levels. Think Character Level and Reputation Levels. Combine this "live" data with the related DestinyProgressionDefinition for a full picture of the Progression. */
class DestinyProgression{
	
	/** The hash identifier of the Progression in question. Use it to look up the DestinyProgressionDefinition in static data. */
	int progressionHash;
	
	/** The amount of progress earned today for this progression. */
	int dailyProgress;
	
	/** If this progression has a daily limit, this is that limit. */
	int dailyLimit;
	
	/** The amount of progress earned toward this progression in the current week. */
	int weeklyProgress;
	
	/** If this progression has a weekly limit, this is that limit. */
	int weeklyLimit;
	
	/** This is the total amount of progress obtained overall for this progression (for instance, the total amount of Character Level experience earned) */
	int currentProgress;
	
	/** This is the level of the progression (for instance, the Character Level). */
	int level;
	
	/** This is the maximum possible level you can achieve for this progression (for example, the maximum character level obtainable) */
	int levelCap;
	
	/** Progressions define their levels in "steps". Since the last step may be repeatable, the user may be at a higher level than the actual Step achieved in the progression. Not necessarily useful, but potentially interesting for those cruising the API. Relate this to the "steps" property of the DestinyProgression to see which step the user is on, if you care about that. (Note that this is Content Version dependent since it refers to indexes.) */
	int stepIndex;
	
	/** The amount of progression (i.e. "Experience") needed to reach the next level of this Progression. Jeez, progression is such an overloaded word. */
	int progressToNextLevel;
	
	/** The total amount of progression (i.e. "Experience") needed in order to reach the next level. */
	int nextLevelAt;
	DestinyProgression(
		this.progressionHash,
		this.dailyProgress,
		this.dailyLimit,
		this.weeklyProgress,
		this.weeklyLimit,
		this.currentProgress,
		this.level,
		this.levelCap,
		this.stepIndex,
		this.progressToNextLevel,
		this.nextLevelAt,
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
			data['progressionHash'] = this.progressionHash;
			data['dailyProgress'] = this.dailyProgress;
			data['dailyLimit'] = this.dailyLimit;
			data['weeklyProgress'] = this.weeklyProgress;
			data['weeklyLimit'] = this.weeklyLimit;
			data['currentProgress'] = this.currentProgress;
			data['level'] = this.level;
			data['levelCap'] = this.levelCap;
			data['stepIndex'] = this.stepIndex;
			data['progressToNextLevel'] = this.progressToNextLevel;
			data['nextLevelAt'] = this.nextLevelAt;
		return data;
	}
}