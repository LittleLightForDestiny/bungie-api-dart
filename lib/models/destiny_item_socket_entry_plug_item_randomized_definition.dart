class DestinyItemSocketEntryPlugItemRandomizedDefinition{
	int plugItemHash;
	DestinyItemSocketEntryPlugItemRandomizedDefinition(
		int this.plugItemHash,
	);

	static DestinyItemSocketEntryPlugItemRandomizedDefinition fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemSocketEntryPlugItemRandomizedDefinition(
				data['plugItemHash'],
		);
	}

	static List<DestinyItemSocketEntryPlugItemRandomizedDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemSocketEntryPlugItemRandomizedDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyItemSocketEntryPlugItemRandomizedDefinition.fromJson(item));
    });
    return list;
	}
}