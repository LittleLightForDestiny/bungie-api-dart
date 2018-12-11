class DestinyItemSetBlockEntryDefinition{
	int trackingValue;
	int itemHash;
	DestinyItemSetBlockEntryDefinition(
		int this.trackingValue,
		int this.itemHash,
	);

	static DestinyItemSetBlockEntryDefinition fromJson(Map<String, dynamic> data){
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
      list.add(DestinyItemSetBlockEntryDefinition.fromJson(item));
    });
    return list;
	}
}