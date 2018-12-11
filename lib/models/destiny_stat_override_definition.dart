import 'destiny_display_properties_definition.dart';
class DestinyStatOverrideDefinition{
	int statHash;
	DestinyDisplayPropertiesDefinition displayProperties;
	DestinyStatOverrideDefinition(
		int this.statHash,
		DestinyDisplayPropertiesDefinition this.displayProperties,
	);

	static DestinyStatOverrideDefinition fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyStatOverrideDefinition(
				data['statHash'],
				data['displayProperties'],
		);
	}

	static List<DestinyStatOverrideDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyStatOverrideDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyStatOverrideDefinition.fromJson(item));
    });
    return list;
	}
}