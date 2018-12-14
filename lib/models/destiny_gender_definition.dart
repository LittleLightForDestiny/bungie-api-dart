import 'destiny_display_properties_definition.dart';
class DestinyGenderDefinition{
	int genderType;
	DestinyDisplayPropertiesDefinition displayProperties;
	int hash;
	int index;
	bool redacted;
	DestinyGenderDefinition(
		this.genderType,
		this.displayProperties,
		this.hash,
		this.index,
		this.redacted,
	);

	static DestinyGenderDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyGenderDefinition(
				data['genderType'],
				data['displayProperties'] != null ? DestinyDisplayPropertiesDefinition.fromMap(data['displayProperties']) : null,
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
			data['genderType'] = this.genderType;
			data['displayProperties'] = this.displayProperties.toMap();
			data['hash'] = this.hash;
			data['index'] = this.index;
			data['redacted'] = this.redacted;
		return data;
	}
}