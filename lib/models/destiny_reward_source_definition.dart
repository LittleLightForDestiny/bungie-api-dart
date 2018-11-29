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

	static DestinyRewardSourceDefinition fromJson(Map<String, dynamic> data){
		return new DestinyRewardSourceDefinition(
				DestinyDisplayPropertiesDefinition.fromJson(data['displayProperties']),
				data['category'],
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyRewardSourceDefinition> fromList(List<dynamic> data){
		List<DestinyRewardSourceDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyRewardSourceDefinition.fromJson(item));
    });
    return list;
	}
}