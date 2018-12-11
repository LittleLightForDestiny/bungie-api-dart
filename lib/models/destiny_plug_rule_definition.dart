class DestinyPlugRuleDefinition{
	String failureMessage;
	DestinyPlugRuleDefinition(
		String this.failureMessage,
	);

	static DestinyPlugRuleDefinition fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyPlugRuleDefinition(
				data['failureMessage'],
		);
	}

	static List<DestinyPlugRuleDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyPlugRuleDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyPlugRuleDefinition.fromJson(item));
    });
    return list;
	}
}