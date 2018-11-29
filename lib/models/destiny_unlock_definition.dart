import 'destiny_display_properties_definition.dart';
class DestinyUnlockDefinition{
	DestinyDisplayPropertiesDefinition displayProperties;
	int hash;
	int index;
	bool redacted;
	DestinyUnlockDefinition(
		DestinyDisplayPropertiesDefinition this.displayProperties,
		int this.hash,
		int this.index,
		bool this.redacted,
	);

	static DestinyUnlockDefinition fromJson(Map<String, dynamic> data){
		return new DestinyUnlockDefinition(
				data['displayProperties'],
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyUnlockDefinition> fromList(List<dynamic> data){
		List<DestinyUnlockDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyUnlockDefinition.fromJson(item));
    });
    return list;
	}
}