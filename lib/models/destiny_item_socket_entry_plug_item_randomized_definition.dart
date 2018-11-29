class DestinyItemSocketEntryPlugItemRandomizedDefinition{
	int plugItemHash;
	DestinyItemSocketEntryPlugItemRandomizedDefinition(
		int this.plugItemHash,
	);

	static DestinyItemSocketEntryPlugItemRandomizedDefinition fromJson(Map<String, dynamic> data){
		return new DestinyItemSocketEntryPlugItemRandomizedDefinition(
				data['plugItemHash'],
		);
	}

	static List<DestinyItemSocketEntryPlugItemRandomizedDefinition> fromList(List<dynamic> data){
		List<DestinyItemSocketEntryPlugItemRandomizedDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyItemSocketEntryPlugItemRandomizedDefinition.fromJson(item));
    });
    return list;
	}
}