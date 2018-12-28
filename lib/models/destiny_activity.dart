
/* Represents the "Live" data that we can obtain about a Character's status with a specific Activity. This will tell you whether the character can participate in the activity, as well as some other basic mutable information. 
Meant to be combined with static DestinyActivityDefinition data for a full picture of the Activity. */
class DestinyActivity{
	
	/* The hash identifier of the Activity. Use this to look up the DestinyActivityDefinition of the activity. */
	int activityHash;
	
	/* If true, then the activity should have a "new" indicator in the Director UI. */
	bool isNew;
	
	/* If true, the user is allowed to lead a Fireteam into this activity. */
	bool canLead;
	
	/* If true, the user is allowed to join with another Fireteam in this activity. */
	bool canJoin;
	
	/* If true, we both have the ability to know that the user has completed this activity and they have completed it. Unfortunately, we can't necessarily know this for all activities. As such, this should probably only be used if you already know in advance which specific activities you wish to check. */
	bool isCompleted;
	
	/* If true, the user should be able to see this activity. */
	bool isVisible;
	
	/* The difficulty level of the activity, if applicable. */
	int displayLevel;
	
	/* The recommended light level for the activity, if applicable. */
	int recommendedLight;
	
	/* A DestinyActivityDifficultyTier enum value indicating the difficulty of the activity. */
	int difficultyTier;
	DestinyActivity(
		this.activityHash,
		this.isNew,
		this.canLead,
		this.canJoin,
		this.isCompleted,
		this.isVisible,
		this.displayLevel,
		this.recommendedLight,
		this.difficultyTier,
	);

	static DestinyActivity fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyActivity(
				data['activityHash'],
				data['isNew'],
				data['canLead'],
				data['canJoin'],
				data['isCompleted'],
				data['isVisible'],
				data['displayLevel'],
				data['recommendedLight'],
				data['difficultyTier'],
		);
	}

	static List<DestinyActivity> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyActivity> list = new List();
    data.forEach((item) {
      list.add(DestinyActivity.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['activityHash'] = this.activityHash;
			data['isNew'] = this.isNew;
			data['canLead'] = this.canLead;
			data['canJoin'] = this.canJoin;
			data['isCompleted'] = this.isCompleted;
			data['isVisible'] = this.isVisible;
			data['displayLevel'] = this.displayLevel;
			data['recommendedLight'] = this.recommendedLight;
			data['difficultyTier'] = this.difficultyTier;
		return data;
	}
}