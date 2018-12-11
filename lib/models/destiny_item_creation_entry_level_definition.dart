class DestinyItemCreationEntryLevelDefinition{
	int level;
	DestinyItemCreationEntryLevelDefinition(
		int this.level,
	);

	static DestinyItemCreationEntryLevelDefinition fromJson(Map<String, dynamic> data){
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
      list.add(DestinyItemCreationEntryLevelDefinition.fromJson(item));
    });
    return list;
	}
}