import 'destiny_display_properties_definition.dart';
class DestinyActivityTypeDefinition{
	DestinyDisplayPropertiesDefinition displayProperties;
	int hash;
	int index;
	bool redacted;
	DestinyActivityTypeDefinition(
		DestinyDisplayPropertiesDefinition this.displayProperties,
		int this.hash,
		int this.index,
		bool this.redacted,
	);

	static DestinyActivityTypeDefinition fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyActivityTypeDefinition(
				DestinyDisplayPropertiesDefinition.fromJson(data['displayProperties']),
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyActivityTypeDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyActivityTypeDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyActivityTypeDefinition.fromJson(item));
    });
    return list;
	}
}