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

	static DestinyDamageTypeDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
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
		if(data == null) {
			return null;
		};
		List<DestinyDamageTypeDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyDamageTypeDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['displayProperties'] = displayProperties;
			data['transparentIconPath'] = transparentIconPath;
			data['showIcon'] = showIcon;
			data['enumValue'] = enumValue;
			data['hash'] = hash;
			data['index'] = index;
			data['redacted'] = redacted;
	}
}