class DestinyItemSocketCategoryDefinition{
	int socketCategoryHash;
	List<int> socketIndexes;
	DestinyItemSocketCategoryDefinition(
		int this.socketCategoryHash,
		List<int> this.socketIndexes,
	);

	static DestinyItemSocketCategoryDefinition fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemSocketCategoryDefinition(
				data['socketCategoryHash'],
				data['socketIndexes'],
		);
	}

	static List<DestinyItemSocketCategoryDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemSocketCategoryDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyItemSocketCategoryDefinition.fromJson(item));
    });
    return list;
	}
}