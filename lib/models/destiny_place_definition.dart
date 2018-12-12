import 'destiny_display_properties_definition.dart';
class DestinyPlaceDefinition{
	DestinyDisplayPropertiesDefinition displayProperties;
	int hash;
	int index;
	bool redacted;
	DestinyPlaceDefinition(
		DestinyDisplayPropertiesDefinition this.displayProperties,
		int this.hash,
		int this.index,
		bool this.redacted,
	);

	static DestinyPlaceDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyPlaceDefinition(
				DestinyDisplayPropertiesDefinition.fromMap(data['displayProperties']),
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyPlaceDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyPlaceDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyPlaceDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['displayProperties'] = displayProperties.toMap();
			data['hash'] = hash;
			data['index'] = index;
			data['redacted'] = redacted;
	}
}