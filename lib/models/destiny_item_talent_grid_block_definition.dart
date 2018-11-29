class DestinyItemTalentGridBlockDefinition{
	int talentGridHash;
	String itemDetailString;
	String buildName;
	int hudDamageType;
	String hudIcon;
	DestinyItemTalentGridBlockDefinition(
		int this.talentGridHash,
		String this.itemDetailString,
		String this.buildName,
		int this.hudDamageType,
		String this.hudIcon,
	);

	static DestinyItemTalentGridBlockDefinition fromJson(Map<String, dynamic> data){
		return new DestinyItemTalentGridBlockDefinition(
				data['talentGridHash'],
				data['itemDetailString'],
				data['buildName'],
				data['hudDamageType'],
				data['hudIcon'],
		);
	}

	static List<DestinyItemTalentGridBlockDefinition> fromList(List<dynamic> data){
		List<DestinyItemTalentGridBlockDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyItemTalentGridBlockDefinition.fromJson(item));
    });
    return list;
	}
}