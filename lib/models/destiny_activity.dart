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
			data['activityHash'] = activityHash;
			data['isNew'] = isNew;
			data['canLead'] = canLead;
			data['canJoin'] = canJoin;
			data['isCompleted'] = isCompleted;
			data['isVisible'] = isVisible;
			data['displayLevel'] = displayLevel;
			data['recommendedLight'] = recommendedLight;
			data['difficultyTier'] = difficultyTier;
	}
}