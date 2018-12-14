class DestinyPublicMilestoneChallenge{
	int objectiveHash;
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