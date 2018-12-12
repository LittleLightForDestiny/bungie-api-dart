class DestinyPlugRuleDefinition{
	String failureMessage;
	DestinyPlugRuleDefinition(
		String this.failureMessage,
	);

	static DestinyPlugRuleDefinition fromMap(Map<String, dynamic> data){
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
      list.add(DestinyPlugRuleDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['failureMessage'] = this.failureMessage;
		return data;
	}
}