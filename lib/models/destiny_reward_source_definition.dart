import 'destiny_display_properties_definition.dart';
class DestinyRewardSourceDefinition{
	DestinyDisplayPropertiesDefinition displayProperties;
	int category;
	int hash;
	int index;
	bool redacted;
	DestinyRewardSourceDefinition(
		DestinyDisplayPropertiesDefinition this.displayProperties,
		int this.category,
		int this.hash,
		int this.index,
		bool this.redacted,
	);

	static DestinyRewardSourceDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyRewardSourceDefinition(
				DestinyDisplayPropertiesDefinition.fromMap(data['displayProperties']),
				data['category'],
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyRewardSourceDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyRewardSourceDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyRewardSourceDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['displayProperties'] = displayProperties.toMap();
			data['category'] = category;
			data['hash'] = hash;
			data['index'] = index;
			data['redacted'] = redacted;
	}
}