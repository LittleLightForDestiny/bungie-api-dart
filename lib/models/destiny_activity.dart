class DestinyActivity{
	int activityHash;
	bool isNew;
	bool canLead;
	bool canJoin;
	bool isCompleted;
	bool isVisible;
	int displayLevel;
	int recommendedLight;
	int difficultyTier;
	DestinyActivity(
		int this.activityHash,
		bool this.isNew,
		bool this.canLead,
		bool this.canJoin,
		bool this.isCompleted,
		bool this.isVisible,
		int this.displayLevel,
		int this.recommendedLight,
		int this.difficultyTier,
	);

	static DestinyActivity fromJson(Map<String, dynamic> data){
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
		List<DestinyActivity> list = new List();
    data.forEach((item) {
      list.add(DestinyActivity.fromJson(item));
    });
    return list;
	}
}