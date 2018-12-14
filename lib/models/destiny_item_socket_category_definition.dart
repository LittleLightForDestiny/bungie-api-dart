class DestinyItemSocketCategoryDefinition{
	int socketCategoryHash;
	List<int> socketIndexes;
	DestinyItemSocketCategoryDefinition(
		this.socketCategoryHash,
		this.socketIndexes,
	);

	static DestinyItemSocketCategoryDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemSocketCategoryDefinition(
				data['socketCategoryHash'],
				data['socketIndexes'] != null ? data['socketIndexes']?.cast<int>() ?? null : null,
		);
	}

	static List<DestinyItemSocketCategoryDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemSocketCategoryDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyItemSocketCategoryDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['socketCategoryHash'] = this.socketCategoryHash;
			data['socketIndexes'] = this.socketIndexes;
		return data;
	}
}