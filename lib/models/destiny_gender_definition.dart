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

	static DestinyGenderDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyGenderDefinition(
				data['genderType'],
				DestinyDisplayPropertiesDefinition.fromMap(data['displayProperties']),
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyGenderDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyGenderDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyGenderDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['genderType'] = genderType;
			data['displayProperties'] = displayProperties.toMap();
			data['hash'] = hash;
			data['index'] = index;
			data['redacted'] = redacted;
	}
}