class DestinyItemSetBlockEntryDefinition{
	int trackingValue;
	int itemHash;
	DestinyItemSetBlockEntryDefinition(
		this.trackingValue,
		this.itemHash,
	);

	static DestinyItemSetBlockEntryDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemSetBlockEntryDefinition(
				data['trackingValue'],
				data['itemHash'],
		);
	}

	static List<DestinyItemSetBlockEntryDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemSetBlockEntryDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyItemSetBlockEntryDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['trackingValue'] = this.trackingValue;
			data['itemHash'] = this.itemHash;
		return data;
	}
}