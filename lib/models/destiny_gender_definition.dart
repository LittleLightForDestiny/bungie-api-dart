import 'destiny_display_properties_definition.dart';
class DestinyGenderDefinition{
	int genderType;
	DestinyDisplayPropertiesDefinition displayProperties;
	int hash;
	int index;
	bool redacted;
	DestinyGenderDefinition(
		int this.genderType,
		DestinyDisplayPropertiesDefinition this.displayProperties,
		int this.hash,
		int this.index,
		bool this.redacted,
	);

	static DestinyGenderDefinition fromJson(Map<String, dynamic> data){
		return new DestinyGenderDefinition(
				data['genderType'],
				DestinyDisplayPropertiesDefinition.fromJson(data['displayProperties']),
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyGenderDefinition> fromList(List<dynamic> data){
		List<DestinyGenderDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyGenderDefinition.fromJson(item));
    });
    return list;
	}
}