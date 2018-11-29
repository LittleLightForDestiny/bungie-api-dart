class DestinyItemActionRequiredItemDefinition{
	int count;
	int itemHash;
	bool deleteOnAction;
	DestinyItemActionRequiredItemDefinition(
		int this.count,
		int this.itemHash,
		bool this.deleteOnAction,
	);

	static DestinyItemActionRequiredItemDefinition fromJson(Map<String, dynamic> data){
		return new DestinyItemActionRequiredItemDefinition(
				data['count'],
				data['itemHash'],
				data['deleteOnAction'],
		);
	}

	static List<DestinyItemActionRequiredItemDefinition> fromList(List<dynamic> data){
		List<DestinyItemActionRequiredItemDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyItemActionRequiredItemDefinition.fromJson(item));
    });
    return list;
	}
}