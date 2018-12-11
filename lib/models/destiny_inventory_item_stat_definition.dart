class DestinyInventoryItemStatDefinition{
	int statHash;
	int value;
	int minimum;
	int maximum;
	DestinyInventoryItemStatDefinition(
		int this.statHash,
		int this.value,
		int this.minimum,
		int this.maximum,
	);

	static DestinyInventoryItemStatDefinition fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyInventoryItemStatDefinition(
				data['statHash'],
				data['value'],
				data['minimum'],
				data['maximum'],
		);
	}

	static List<DestinyInventoryItemStatDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyInventoryItemStatDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyInventoryItemStatDefinition.fromJson(item));
    });
    return list;
	}
}