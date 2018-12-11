import 'destiny_display_properties_definition.dart';
class DestinyDamageTypeDefinition{
	DestinyDisplayPropertiesDefinition displayProperties;
	String transparentIconPath;
	bool showIcon;
	int enumValue;
	int hash;
	int index;
	bool redacted;
	DestinyDamageTypeDefinition(
		DestinyDisplayPropertiesDefinition this.displayProperties,
		String this.transparentIconPath,
		bool this.showIcon,
		int this.enumValue,
		int this.hash,
		int this.index,
		bool this.redacted,
	);

	static DestinyDamageTypeDefinition fromJson(Map<String, dynamic> data){
		return new DestinyDamageTypeDefinition(
				data['displayProperties'],
				data['transparentIconPath'],
				data['showIcon'],
				data['enumValue'],
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyDamageTypeDefinition> fromList(List<dynamic> data){
		List<DestinyDamageTypeDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyDamageTypeDefinition.fromJson(item));
    });
    return list;
	}
}