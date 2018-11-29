class DestinyItemSocketEntryPlugItemDefinition{
	int plugItemHash;
	DestinyItemSocketEntryPlugItemDefinition(
		int this.plugItemHash,
	);

	static DestinyItemSocketEntryPlugItemDefinition fromJson(Map<String, dynamic> data){
		return new DestinyItemSocketEntryPlugItemDefinition(
				data['plugItemHash'],
		);
	}

	static List<DestinyItemSocketEntryPlugItemDefinition> fromList(List<dynamic> data){
		List<DestinyItemSocketEntryPlugItemDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyItemSocketEntryPlugItemDefinition.fromJson(item));
    });
    return list;
	}
}