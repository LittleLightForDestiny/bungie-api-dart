class DestinyPlugRuleDefinition{
	String failureMessage;
	DestinyPlugRuleDefinition(
		String this.failureMessage,
	);

	static DestinyPlugRuleDefinition fromJson(Map<String, dynamic> data){
		return new DestinyPlugRuleDefinition(
				data['failureMessage'],
		);
	}

	static List<DestinyPlugRuleDefinition> fromList(List<dynamic> data){
		List<DestinyPlugRuleDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyPlugRuleDefinition.fromJson(item));
    });
    return list;
	}
}