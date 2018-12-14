import 'destiny_display_properties_definition.dart';
class DestinyLoreDefinition{
	DestinyDisplayPropertiesDefinition displayProperties;
	String subtitle;
	int hash;
	int index;
	bool redacted;
	DestinyLoreDefinition(
		this.displayProperties,
		this.subtitle,
		this.hash,
		this.index,
		this.redacted,
	);

	static DestinyLoreDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyLoreDefinition(
				data['displayProperties'] != null ? DestinyDisplayPropertiesDefinition.fromMap(data['displayProperties']) : null,
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
			data['displayProperties'] = this.displayProperties.toMap();
			data['subtitle'] = this.subtitle;
			data['hash'] = this.hash;
			data['index'] = this.index;
			data['redacted'] = this.redacted;
		return data;
	}
}