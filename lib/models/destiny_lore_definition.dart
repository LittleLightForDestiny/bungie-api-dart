import 'destiny_display_properties_definition.dart';
class DestinyLoreDefinition{
	DestinyDisplayPropertiesDefinition displayProperties;
	String subtitle;
	int hash;
	int index;
	bool redacted;
	DestinyLoreDefinition(
		DestinyDisplayPropertiesDefinition this.displayProperties,
		String this.subtitle,
		int this.hash,
		int this.index,
		bool this.redacted,
	);

	static DestinyLoreDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyLoreDefinition(
				DestinyDisplayPropertiesDefinition.fromMap(data['displayProperties']),
				data['subtitle'],
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyLoreDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyLoreDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyLoreDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['displayProperties'] = displayProperties.toMap();
			data['subtitle'] = subtitle;
			data['hash'] = hash;
			data['index'] = index;
			data['redacted'] = redacted;
	}
}