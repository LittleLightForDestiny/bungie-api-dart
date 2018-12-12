class DestinyVendorActionDefinition{
	String description;
	int executeSeconds;
	String icon;
	String name;
	String verb;
	bool isPositive;
	String actionId;
	int actionHash;
	bool autoPerformAction;
	DestinyVendorActionDefinition(
		String this.description,
		int this.executeSeconds,
		String this.icon,
		String this.name,
		String this.verb,
		bool this.isPositive,
		String this.actionId,
		int this.actionHash,
		bool this.autoPerformAction,
	);

	static DestinyVendorActionDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyVendorActionDefinition(
				data['description'],
				data['executeSeconds'],
				data['icon'],
				data['name'],
				data['verb'],
				data['isPositive'],
				data['actionId'],
				data['actionHash'],
				data['autoPerformAction'],
		);
	}

	static List<DestinyVendorActionDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyVendorActionDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyVendorActionDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['description'] = description;
			data['executeSeconds'] = executeSeconds;
			data['icon'] = icon;
			data['name'] = name;
			data['verb'] = verb;
			data['isPositive'] = isPositive;
			data['actionId'] = actionId;
			data['actionHash'] = actionHash;
			data['autoPerformAction'] = autoPerformAction;
	}
}