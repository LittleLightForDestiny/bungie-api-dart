class DestinyUnlockExpressionDefinition{
	int scope;
	DestinyUnlockExpressionDefinition(
		int this.scope,
	);

	static DestinyUnlockExpressionDefinition fromJson(Map<String, dynamic> data){
		return new DestinyUnlockExpressionDefinition(
				data['scope'],
		);
	}

	static List<DestinyUnlockExpressionDefinition> fromList(List<dynamic> data){
		List<DestinyUnlockExpressionDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyUnlockExpressionDefinition.fromJson(item));
    });
    return list;
	}
}