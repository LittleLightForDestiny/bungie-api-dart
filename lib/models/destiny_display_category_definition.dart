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

	static DestinyDisplayCategoryDefinition fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyDisplayCategoryDefinition(
				data['identifier'],
				data['displayCategoryHash'],
				DestinyDisplayPropertiesDefinition.fromJson(data['displayProperties']),
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
      list.add(DestinyDisplayCategoryDefinition.fromJson(item));
    });
    return list;
	}
}