class DestinyProgressionDisplayPropertiesDefinition{
	String displayUnitsName;
	String description;
	String name;
	String icon;
	bool hasIcon;
	DestinyProgressionDisplayPropertiesDefinition(
		this.displayUnitsName,
		this.description,
		this.name,
		this.icon,
		this.hasIcon,
	);

	static DestinyProgressionDisplayPropertiesDefinition fromMap(Map<String, dynamic> data){
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
      list.add(DestinyProgressionDisplayPropertiesDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['displayUnitsName'] = this.displayUnitsName;
			data['description'] = this.description;
			data['name'] = this.name;
			data['icon'] = this.icon;
			data['hasIcon'] = this.hasIcon;
		return data;
	}
}