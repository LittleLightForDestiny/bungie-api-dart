import 'destiny_vendor_requirement_display_entry_definition.dart';
class DestinyVendorDisplayPropertiesDefinition{
	String largeIcon;
	String subtitle;
	String originalIcon;
	List<DestinyVendorRequirementDisplayEntryDefinition> requirementsDisplay;
	String smallTransparentIcon;
	String mapIcon;
	String largeTransparentIcon;
	String description;
	String name;
	String icon;
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