class DestinyInsertPlugActionDefinition{
	int actionExecuteSeconds;
	int actionType;
	DestinyInsertPlugActionDefinition(
		int this.actionExecuteSeconds,
		int this.actionType,
	);

	static DestinyInsertPlugActionDefinition fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyInsertPlugActionDefinition(
				data['actionExecuteSeconds'],
				data['actionType'],
		);
	}

	static List<DestinyInsertPlugActionDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyInsertPlugActionDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyInsertPlugActionDefinition.fromJson(item));
    });
    return list;
	}
}