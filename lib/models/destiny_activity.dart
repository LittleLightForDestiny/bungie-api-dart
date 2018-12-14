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