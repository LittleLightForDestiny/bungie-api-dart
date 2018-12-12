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

	static DestinyItemTalentGridBlockDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemTalentGridBlockDefinition(
				data['talentGridHash'],
				data['itemDetailString'],
				data['buildName'],
				data['hudDamageType'],
				data['hudIcon'],
		);
	}

	static List<DestinyItemTalentGridBlockDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemTalentGridBlockDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyItemTalentGridBlockDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['talentGridHash'] = this.talentGridHash;
			data['itemDetailString'] = this.itemDetailString;
			data['buildName'] = this.buildName;
			data['hudDamageType'] = this.hudDamageType;
			data['hudIcon'] = this.hudIcon;
		return data;
	}
}