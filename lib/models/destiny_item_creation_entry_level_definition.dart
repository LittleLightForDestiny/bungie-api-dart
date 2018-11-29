class DestinyItemCreationEntryLevelDefinition{
	int level;
	DestinyItemCreationEntryLevelDefinition(
		int this.level,
	);

	static DestinyItemCreationEntryLevelDefinition fromJson(Map<String, dynamic> data){
		return new DestinyItemCreationEntryLevelDefinition(
				data['level'],
		);
	}

	static List<DestinyItemCreationEntryLevelDefinition> fromList(List<dynamic> data){
		List<DestinyItemCreationEntryLevelDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyItemCreationEntryLevelDefinition.fromJson(item));
    });
    return list;
	}
}