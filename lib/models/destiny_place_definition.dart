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

	static DestinyPlaceDefinition fromJson(Map<String, dynamic> data){
		return new DestinyPlaceDefinition(
				DestinyDisplayPropertiesDefinition.fromJson(data['displayProperties']),
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyPlaceDefinition> fromList(List<dynamic> data){
		List<DestinyPlaceDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyPlaceDefinition.fromJson(item));
    });
    return list;
	}
}