class DestinyItemCreationEntryLevelDefinition{
	int level;
	DestinyItemCreationEntryLevelDefinition(
		int this.level,
	);

	static DestinyItemCreationEntryLevelDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemCreationEntryLevelDefinition(
				data['level'],
		);
	}

	static List<DestinyItemCreationEntryLevelDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemCreationEntryLevelDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyItemCreationEntryLevelDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['level'] = this.level;
		return data;
	}
}