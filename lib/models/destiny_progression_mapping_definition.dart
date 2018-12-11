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

	static DestinyProgressionMappingDefinition fromJson(Map<String, dynamic> data){
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
      list.add(DestinyProgressionMappingDefinition.fromJson(item));
    });
    return list;
	}
}