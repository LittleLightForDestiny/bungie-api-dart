class DestinyPublicMilestoneActivityVariant{
	int activityHash;
	int activityModeHash;
	int activityModeType;
	DestinyPublicMilestoneActivityVariant(
		this.activityHash,
		this.activityModeHash,
		this.activityModeType,
	);

	static DestinyPublicMilestoneActivityVariant fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyPublicMilestoneActivityVariant(
				data['activityHash'],
				data['activityModeHash'],
				data['activityModeType'],
		);
	}

	static List<DestinyPublicMilestoneActivityVariant> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyPublicMilestoneActivityVariant> list = new List();
    data.forEach((item) {
      list.add(DestinyPublicMilestoneActivityVariant.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['activityHash'] = this.activityHash;
			data['activityModeHash'] = this.activityModeHash;
			data['activityModeType'] = this.activityModeType;
		return data;
	}
}