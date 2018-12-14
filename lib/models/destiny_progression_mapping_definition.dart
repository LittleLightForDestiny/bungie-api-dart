import 'destiny_display_properties_definition.dart';
class DestinyProgressionMappingDefinition{
	DestinyDisplayPropertiesDefinition displayProperties;
	String displayUnits;
	int hash;
	int index;
	bool redacted;
	DestinyProgressionMappingDefinition(
		this.displayProperties,
		this.displayUnits,
		this.hash,
		this.index,
		this.redacted,
	);

	static DestinyProgressionMappingDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyProgressionMappingDefinition(
				data['displayProperties'] != null ? DestinyDisplayPropertiesDefinition.fromMap(data['displayProperties']) : null,
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
			data['displayProperties'] = this.displayProperties;
			data['displayUnits'] = this.displayUnits;
			data['hash'] = this.hash;
			data['index'] = this.index;
			data['redacted'] = this.redacted;
		return data;
	}
}