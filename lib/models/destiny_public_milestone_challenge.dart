
/* A Milestone can have many Challenges. Challenges are just extra Objectives that provide a fun way to mix-up play and provide extra rewards. */
class DestinyPublicMilestoneChallenge{
	
	/* The objective for the Challenge, which should have human-readable data about what needs to be done to accomplish the objective. Use this hash to look up the DestinyObjectiveDefinition. */
	int objectiveHash;
	
	/* IF the Objective is related to a specific Activity, this will be that activity's hash. Use it to look up the DestinyActivityDefinition for additional data to show. */
	int activityHash;
	DestinyPublicMilestoneChallenge(
		this.objectiveHash,
		this.activityHash,
	);

	static DestinyPublicMilestoneChallenge fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyPublicMilestoneChallenge(
				data['objectiveHash'],
				data['activityHash'],
		);
	}

	static List<DestinyPublicMilestoneChallenge> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyPublicMilestoneChallenge> list = new List();
    data.forEach((item) {
      list.add(DestinyPublicMilestoneChallenge.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['objectiveHash'] = this.objectiveHash;
			data['activityHash'] = this.activityHash;
		return data;
	}
}