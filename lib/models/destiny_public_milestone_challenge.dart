class DestinyPublicMilestoneChallenge{
	int objectiveHash;
	int activityHash;
	DestinyPublicMilestoneChallenge(
		int this.objectiveHash,
		int this.activityHash,
	);

	static DestinyPublicMilestoneChallenge fromJson(Map<String, dynamic> data){
		return new DestinyPublicMilestoneChallenge(
				data['objectiveHash'],
				data['activityHash'],
		);
	}

	static List<DestinyPublicMilestoneChallenge> fromList(List<dynamic> data){
		List<DestinyPublicMilestoneChallenge> list = new List();
    data.forEach((item) {
      list.add(DestinyPublicMilestoneChallenge.fromJson(item));
    });
    return list;
	}
}