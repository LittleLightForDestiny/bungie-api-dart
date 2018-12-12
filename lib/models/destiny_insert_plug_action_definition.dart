class DestinyInsertPlugActionDefinition{
	int actionExecuteSeconds;
	int actionType;
	DestinyInsertPlugActionDefinition(
		int this.actionExecuteSeconds,
		int this.actionType,
	);

	static DestinyInsertPlugActionDefinition fromMap(Map<String, dynamic> data){
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
      list.add(DestinyInsertPlugActionDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['actionExecuteSeconds'] = this.actionExecuteSeconds;
			data['actionType'] = this.actionType;
		return data;
	}
}