class DestinyVendorRequirementDisplayEntryDefinition{
	String icon;
	String name;
	String source;
	String type;
	DestinyVendorRequirementDisplayEntryDefinition(
		String this.icon,
		String this.name,
		String this.source,
		String this.type,
	);

	static DestinyVendorRequirementDisplayEntryDefinition fromJson(Map<String, dynamic> data){
		return new DestinyVendorRequirementDisplayEntryDefinition(
				data['icon'],
				data['name'],
				data['source'],
				data['type'],
		);
	}

	static List<DestinyVendorRequirementDisplayEntryDefinition> fromList(List<dynamic> data){
		List<DestinyVendorRequirementDisplayEntryDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyVendorRequirementDisplayEntryDefinition.fromJson(item));
    });
    return list;
	}
}