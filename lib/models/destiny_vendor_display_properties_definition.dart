import 'destiny_vendor_requirement_display_entry_definition.dart';

/**  */
class DestinyVendorDisplayPropertiesDefinition{
	
	/** I regret calling this a "large icon". It's more like a medium-sized image with a picture of the vendor's mug on it, trying their best to look cool. Not what one would call an icon. */
	String largeIcon;
	
	/**  */
	String subtitle;
	
	/** If we replaced the icon with something more glitzy, this is the original icon that the vendor had according to the game's content. It may be more lame and/or have less razzle-dazzle. But who am I to tell you which icon to use. */
	String originalIcon;
	
	/** Vendors, in addition to expected display property data, may also show some "common requirements" as statically defined definition data. This might be when a vendor accepts a single type of currency, or when the currency is unique to the vendor and the designers wanted to show that currency when you interact with the vendor. */
	List<DestinyVendorRequirementDisplayEntryDefinition> requirementsDisplay;
	
	/** This is the icon used in parts of the game UI such as the vendor's waypoint. */
	String smallTransparentIcon;
	
	/** This is the icon used in the map overview, when the vendor is located on the map. */
	String mapIcon;
	
	/** This is apparently the "Watermark". I am not certain offhand where this is actually used in the Game UI, but some people may find it useful. */
	String largeTransparentIcon;
	
	/**  */
	String description;
	
	/**  */
	String name;
	
	/** Note that "icon" is sometimes misleading, and should be interpreted in the context of the entity. For instance, in Destiny 1 the DestinyRecordBookDefinition's icon was a big picture of a book.
But usually, it will be a small square image that you can use as... well, an icon. */
	String icon;
	
	/**  */
	bool hasIcon;
	DestinyVendorDisplayPropertiesDefinition(
		this.largeIcon,
		this.subtitle,
		this.originalIcon,
		this.requirementsDisplay,
		this.smallTransparentIcon,
		this.mapIcon,
		this.largeTransparentIcon,
		this.description,
		this.name,
		this.icon,
		this.hasIcon,
	);

	static DestinyVendorDisplayPropertiesDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyVendorDisplayPropertiesDefinition(
				data['largeIcon'],
				data['subtitle'],
				data['originalIcon'],
				data['requirementsDisplay'] != null ? DestinyVendorRequirementDisplayEntryDefinition.fromList(data['requirementsDisplay']) : null,
				data['smallTransparentIcon'],
				data['mapIcon'],
				data['largeTransparentIcon'],
				data['description'],
				data['name'],
				data['icon'],
				data['hasIcon'],
		);
	}

	static List<DestinyVendorDisplayPropertiesDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyVendorDisplayPropertiesDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyVendorDisplayPropertiesDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['largeIcon'] = this.largeIcon;
			data['subtitle'] = this.subtitle;
			data['originalIcon'] = this.originalIcon;
			data['requirementsDisplay'] = this.requirementsDisplay.map((item)=>item.toMap()).toList();
			data['smallTransparentIcon'] = this.smallTransparentIcon;
			data['mapIcon'] = this.mapIcon;
			data['largeTransparentIcon'] = this.largeTransparentIcon;
			data['description'] = this.description;
			data['name'] = this.name;
			data['icon'] = this.icon;
			data['hasIcon'] = this.hasIcon;
		return data;
	}
}