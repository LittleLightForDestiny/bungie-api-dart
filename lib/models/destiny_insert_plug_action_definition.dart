class DestinyInsertPlugActionDefinition{
	int actionExecuteSeconds;
	int actionType;
	DestinyInsertPlugActionDefinition(
		int this.actionExecuteSeconds,
		int this.actionType,
	);

	static DestinyInsertPlugActionDefinition fromJson(Map<String, dynamic> data){
		return new DestinyInsertPlugActionDefinition(
				data['actionExecuteSeconds'],
				data['actionType'],
		);
	}

	static List<DestinyInsertPlugActionDefinition> fromList(List<dynamic> data){
		List<DestinyInsertPlugActionDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyInsertPlugActionDefinition.fromJson(item));
    });
    return list;
	}
}