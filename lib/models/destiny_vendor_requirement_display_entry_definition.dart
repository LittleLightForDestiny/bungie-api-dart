class DestinyVendorRequirementDisplayEntryDefinition{
	String icon;
	String name;
	String source;
	String type;
	DestinyVendorRequirementDisplayEntryDefinition(
		this.icon,
		this.name,
		this.source,
		this.type,
	);

	static DestinyVendorRequirementDisplayEntryDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyVendorRequirementDisplayEntryDefinition(
				data['icon'],
				data['name'],
				data['source'],
				data['type'],
		);
	}

	static List<DestinyVendorRequirementDisplayEntryDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyVendorRequirementDisplayEntryDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyVendorRequirementDisplayEntryDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['icon'] = this.icon;
			data['name'] = this.name;
			data['source'] = this.source;
			data['type'] = this.type;
		return data;
	}
}