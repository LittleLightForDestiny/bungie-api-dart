class DestinyVendorCategoryOverlayDefinition{
	String choiceDescription;
	String description;
	String icon;
	String title;
	int currencyItemHash;
	DestinyVendorCategoryOverlayDefinition(
		String this.choiceDescription,
		String this.description,
		String this.icon,
		String this.title,
		int this.currencyItemHash,
	);

	static DestinyVendorCategoryOverlayDefinition fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyVendorCategoryOverlayDefinition(
				data['choiceDescription'],
				data['description'],
				data['icon'],
				data['title'],
				data['currencyItemHash'],
		);
	}

	static List<DestinyVendorCategoryOverlayDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyVendorCategoryOverlayDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyVendorCategoryOverlayDefinition.fromJson(item));
    });
    return list;
	}
}