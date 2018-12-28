
/**  */
class DestinyProgressionDisplayPropertiesDefinition{
	
	/** When progressions show your "experience" gained, that bar has units (i.e. "Experience", "Bad Dudes Snuffed Out", whatever). This is the localized string for that unit of measurement. */
	String displayUnitsName;
	
	/**  */
	String description;
	
	/**  */
	String name;
	
	/** Note that "icon" is sometimes misleading, and should be interpreted in the context of the entity. For instance, in Destiny 1 the DestinyRecordBookDefinition's icon was a big picture of a book.
But usually, it will be a small square image that you can use as... well, an icon. */
	String icon;
	
	/**  */
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