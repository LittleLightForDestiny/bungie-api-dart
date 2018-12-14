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
		this.displayProperties,
		this.transparentIconPath,
		this.showIcon,
		this.enumValue,
		this.hash,
		this.index,
		this.redacted,
	);

	static DestinyDamageTypeDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyDamageTypeDefinition(
				data['displayProperties'] != null ? DestinyDisplayPropertiesDefinition.fromMap(data['displayProperties']) : null,
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
			data['displayProperties'] = this.displayProperties;
			data['transparentIconPath'] = this.transparentIconPath;
			data['showIcon'] = this.showIcon;
			data['enumValue'] = this.enumValue;
			data['hash'] = this.hash;
			data['index'] = this.index;
			data['redacted'] = this.redacted;
		return data;
	}
}