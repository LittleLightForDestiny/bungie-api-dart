class DestinyDisplayPropertiesDefinition{
	String description;
	String name;
	String icon;
	bool hasIcon;
	DestinyDisplayPropertiesDefinition(
		String this.description,
		String this.name,
		String this.icon,
		bool this.hasIcon,
	);

	static DestinyDisplayPropertiesDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyDisplayPropertiesDefinition(
				data['description'],
				data['name'],
				data['icon'],
				data['hasIcon'],
		);
	}

	static List<DestinyDisplayPropertiesDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyDisplayPropertiesDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyDisplayPropertiesDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['description'] = this.description;
			data['name'] = this.name;
			data['icon'] = this.icon;
			data['hasIcon'] = this.hasIcon;
		return data;
	}
}