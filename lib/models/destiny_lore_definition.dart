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

	static DestinyLoreDefinition fromJson(Map<String, dynamic> data){
		return new DestinyLoreDefinition(
				DestinyDisplayPropertiesDefinition.fromJson(data['displayProperties']),
				data['subtitle'],
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyLoreDefinition> fromList(List<dynamic> data){
		List<DestinyLoreDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyLoreDefinition.fromJson(item));
    });
    return list;
	}
}