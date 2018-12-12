import 'destiny_display_properties_definition.dart';
class DestinyProgressionMappingDefinition{
	DestinyDisplayPropertiesDefinition displayProperties;
	String displayUnits;
	int hash;
	int index;
	bool redacted;
	DestinyProgressionMappingDefinition(
		DestinyDisplayPropertiesDefinition this.displayProperties,
		String this.displayUnits,
		int this.hash,
		int this.index,
		bool this.redacted,
	);

	static DestinyProgressionMappingDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyProgressionMappingDefinition(
				data['displayProperties'],
				data['displayUnits'],
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyProgressionMappingDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyProgressionMappingDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyProgressionMappingDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['displayProperties'] = displayProperties;
			data['displayUnits'] = displayUnits;
			data['hash'] = hash;
			data['index'] = index;
			data['redacted'] = redacted;
	}
}