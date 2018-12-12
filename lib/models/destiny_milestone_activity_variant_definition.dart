class DestinyMilestoneActivityVariantDefinition{
	int activityHash;
	int order;
	DestinyMilestoneActivityVariantDefinition(
		int this.activityHash,
		int this.order,
	);

	static DestinyMilestoneActivityVariantDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyMilestoneActivityVariantDefinition(
				data['activityHash'],
				data['order'],
		);
	}

	static List<DestinyMilestoneActivityVariantDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyMilestoneActivityVariantDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyMilestoneActivityVariantDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['activityHash'] = activityHash;
			data['order'] = order;
	}
}