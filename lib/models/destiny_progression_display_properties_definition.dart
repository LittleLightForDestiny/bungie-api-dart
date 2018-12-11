class DestinyProgressionDisplayPropertiesDefinition{
	String displayUnitsName;
	String description;
	String name;
	String icon;
	bool hasIcon;
	DestinyProgressionDisplayPropertiesDefinition(
		String this.displayUnitsName,
		String this.description,
		String this.name,
		String this.icon,
		bool this.hasIcon,
	);

	static DestinyProgressionDisplayPropertiesDefinition fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyProgressionDisplayPropertiesDefinition(
				data['displayUnitsName'],
				data['description'],
				data['name'],
				data['icon'],
				data['hasIcon'],
		);
	}

	static List<DestinyProgressionDisplayPropertiesDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyProgressionDisplayPropertiesDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyProgressionDisplayPropertiesDefinition.fromJson(item));
    });
    return list;
	}
}