class DestinyMilestoneActivityVariantDefinition{
	int activityHash;
	int order;
	DestinyMilestoneActivityVariantDefinition(
		int this.activityHash,
		int this.order,
	);

	static DestinyMilestoneActivityVariantDefinition fromJson(Map<String, dynamic> data){
		return new DestinyMilestoneActivityVariantDefinition(
				data['activityHash'],
				data['order'],
		);
	}

	static List<DestinyMilestoneActivityVariantDefinition> fromList(List<dynamic> data){
		List<DestinyMilestoneActivityVariantDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyMilestoneActivityVariantDefinition.fromJson(item));
    });
    return list;
	}
}