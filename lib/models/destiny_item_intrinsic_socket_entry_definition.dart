class DestinyItemIntrinsicSocketEntryDefinition{
	int plugItemHash;
	int socketTypeHash;
	bool defaultVisible;
	DestinyItemIntrinsicSocketEntryDefinition(
		int this.plugItemHash,
		int this.socketTypeHash,
		bool this.defaultVisible,
	);

	static DestinyItemIntrinsicSocketEntryDefinition fromJson(Map<String, dynamic> data){
		return new DestinyItemIntrinsicSocketEntryDefinition(
				data['plugItemHash'],
				data['socketTypeHash'],
				data['defaultVisible'],
		);
	}

	static List<DestinyItemIntrinsicSocketEntryDefinition> fromList(List<dynamic> data){
		List<DestinyItemIntrinsicSocketEntryDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyItemIntrinsicSocketEntryDefinition.fromJson(item));
    });
    return list;
	}
}