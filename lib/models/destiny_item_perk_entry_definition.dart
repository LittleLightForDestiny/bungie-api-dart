class DestinyItemPerkEntryDefinition{
	String requirementDisplayString;
	int perkHash;
	int perkVisibility;
	DestinyItemPerkEntryDefinition(
		String this.requirementDisplayString,
		int this.perkHash,
		int this.perkVisibility,
	);

	static DestinyItemPerkEntryDefinition fromJson(Map<String, dynamic> data){
		return new DestinyItemPerkEntryDefinition(
				data['requirementDisplayString'],
				data['perkHash'],
				data['perkVisibility'],
		);
	}

	static List<DestinyItemPerkEntryDefinition> fromList(List<dynamic> data){
		List<DestinyItemPerkEntryDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyItemPerkEntryDefinition.fromJson(item));
    });
    return list;
	}
}