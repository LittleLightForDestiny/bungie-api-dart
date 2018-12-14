class DestinyUnlockExpressionDefinition{
	int scope;
	DestinyUnlockExpressionDefinition(
		this.scope,
	);

	static DestinyUnlockExpressionDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyUnlockExpressionDefinition(
				data['scope'],
		);
	}

	static List<DestinyUnlockExpressionDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyUnlockExpressionDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyUnlockExpressionDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['scope'] = this.scope;
		return data;
	}
}