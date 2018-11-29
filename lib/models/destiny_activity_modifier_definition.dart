import 'destiny_display_properties_definition.dart';
class DestinyActivityModifierDefinition{
	DestinyDisplayPropertiesDefinition displayProperties;
	int hash;
	int index;
	bool redacted;
	DestinyActivityModifierDefinition(
		DestinyDisplayPropertiesDefinition this.displayProperties,
		int this.hash,
		int this.index,
		bool this.redacted,
	);

	static DestinyActivityModifierDefinition fromJson(Map<String, dynamic> data){
		return new DestinyActivityModifierDefinition(
				DestinyDisplayPropertiesDefinition.fromJson(data['displayProperties']),
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyActivityModifierDefinition> fromList(List<dynamic> data){
		List<DestinyActivityModifierDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyActivityModifierDefinition.fromJson(item));
    });
    return list;
	}
}