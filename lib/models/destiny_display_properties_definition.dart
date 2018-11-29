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

	static DestinyDisplayPropertiesDefinition fromJson(Map<String, dynamic> data){
		return new DestinyDisplayPropertiesDefinition(
				data['description'],
				data['name'],
				data['icon'],
				data['hasIcon'],
		);
	}

	static List<DestinyDisplayPropertiesDefinition> fromList(List<dynamic> data){
		List<DestinyDisplayPropertiesDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyDisplayPropertiesDefinition.fromJson(item));
    });
    return list;
	}
}