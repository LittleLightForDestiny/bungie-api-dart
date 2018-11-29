class DestinyItemSetBlockEntryDefinition{
	int trackingValue;
	int itemHash;
	DestinyItemSetBlockEntryDefinition(
		int this.trackingValue,
		int this.itemHash,
	);

	static DestinyItemSetBlockEntryDefinition fromJson(Map<String, dynamic> data){
		return new DestinyItemSetBlockEntryDefinition(
				data['trackingValue'],
				data['itemHash'],
		);
	}

	static List<DestinyItemSetBlockEntryDefinition> fromList(List<dynamic> data){
		List<DestinyItemSetBlockEntryDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyItemSetBlockEntryDefinition.fromJson(item));
    });
    return list;
	}
}