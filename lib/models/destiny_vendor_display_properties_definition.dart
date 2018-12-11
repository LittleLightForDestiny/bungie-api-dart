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
		String this.largeIcon,
		String this.subtitle,
		String this.originalIcon,
		List<DestinyVendorRequirementDisplayEntryDefinition> this.requirementsDisplay,
		String this.smallTransparentIcon,
		String this.mapIcon,
		String this.largeTransparentIcon,
		String this.description,
		String this.name,
		String this.icon,
		bool this.hasIcon,
	);

	static DestinyVendorDisplayPropertiesDefinition fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyVendorDisplayPropertiesDefinition(
				data['largeIcon'],
				data['subtitle'],
				data['originalIcon'],
				DestinyVendorRequirementDisplayEntryDefinition.fromList(data['requirementsDisplay']),
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
      list.add(DestinyVendorDisplayPropertiesDefinition.fromJson(item));
    });
    return list;
	}
}