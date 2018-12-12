import 'destiny_display_properties_definition.dart';
class DestinyDisplayCategoryDefinition{
	String identifier;
	int displayCategoryHash;
	DestinyDisplayPropertiesDefinition displayProperties;
	bool displayInBanner;
	int progressionHash;
	int sortOrder;
	int displayStyleHash;
	String displayStyleIdentifier;
	DestinyDisplayCategoryDefinition(
		String this.identifier,
		int this.displayCategoryHash,
		DestinyDisplayPropertiesDefinition this.displayProperties,
		bool this.displayInBanner,
		int this.progressionHash,
		int this.sortOrder,
		int this.displayStyleHash,
		String this.displayStyleIdentifier,
	);

	static DestinyDisplayCategoryDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyDisplayCategoryDefinition(
				data['identifier'],
				data['displayCategoryHash'],
				DestinyDisplayPropertiesDefinition.fromMap(data['displayProperties']),
				data['displayInBanner'],
				data['progressionHash'],
				data['sortOrder'],
				data['displayStyleHash'],
				data['displayStyleIdentifier'],
		);
	}

	static List<DestinyDisplayCategoryDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyDisplayCategoryDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyDisplayCategoryDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['identifier'] = identifier;
			data['displayCategoryHash'] = displayCategoryHash;
			data['displayProperties'] = displayProperties.toMap();
			data['displayInBanner'] = displayInBanner;
			data['progressionHash'] = progressionHash;
			data['sortOrder'] = sortOrder;
			data['displayStyleHash'] = displayStyleHash;
			data['displayStyleIdentifier'] = displayStyleIdentifier;
	}
}