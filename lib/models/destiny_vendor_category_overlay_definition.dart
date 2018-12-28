
/** The details of an overlay prompt to show to a user. They are all fairly self-explanatory localized strings that can be shown. */
class DestinyVendorCategoryOverlayDefinition{
	
	/**  */
	String choiceDescription;
	
	/**  */
	String description;
	
	/**  */
	String icon;
	
	/**  */
	String title;
	
	/** If this overlay has a currency item that it features, this is said featured item. */
	int currencyItemHash;
	DestinyVendorCategoryOverlayDefinition(
		this.choiceDescription,
		this.description,
		this.icon,
		this.title,
		this.currencyItemHash,
	);

	static DestinyVendorCategoryOverlayDefinition fromMap(Map<String, dynamic> data){
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
      list.add(DestinyVendorCategoryOverlayDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['choiceDescription'] = this.choiceDescription;
			data['description'] = this.description;
			data['icon'] = this.icon;
			data['title'] = this.title;
			data['currencyItemHash'] = this.currencyItemHash;
		return data;
	}
}