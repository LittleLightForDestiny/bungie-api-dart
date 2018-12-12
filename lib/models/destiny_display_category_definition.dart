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
			data['identifier'] = this.identifier;
			data['displayCategoryHash'] = this.displayCategoryHash;
			data['displayProperties'] = this.displayProperties.toMap();
			data['displayInBanner'] = this.displayInBanner;
			data['progressionHash'] = this.progressionHash;
			data['sortOrder'] = this.sortOrder;
			data['displayStyleHash'] = this.displayStyleHash;
			data['displayStyleIdentifier'] = this.displayStyleIdentifier;
		return data;
	}
}