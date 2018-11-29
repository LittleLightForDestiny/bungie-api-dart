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

	static DestinyVendorActionDefinition fromJson(Map<String, dynamic> data){
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
		List<DestinyVendorActionDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyVendorActionDefinition.fromJson(item));
    });
    return list;
	}
}