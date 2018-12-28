
/** Mostly for historical purposes, we segregate Faction progressions from other progressions. This is just a DestinyProgression with a shortcut for finding the DestinyFactionDefinition of the faction related to the progression. */
class DestinyFactionProgression{
	
	/** The hash identifier of the Faction related to this progression. Use it to look up the DestinyFactionDefinition for more rendering info. */
	int factionHash;
	
	/** The index of the Faction vendor that is currently available. Will be set to -1 if no vendors are available. */
	int factionVendorIndex;
	
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
	DestinyFactionProgression(
		this.factionHash,
		this.factionVendorIndex,
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

	static DestinyFactionProgression fromMap(Map<String, dynamic> data){
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
      list.add(DestinyFactionProgression.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['factionHash'] = this.factionHash;
			data['factionVendorIndex'] = this.factionVendorIndex;
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