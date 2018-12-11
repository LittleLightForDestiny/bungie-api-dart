import 'destiny_display_properties_definition.dart';
class DestinyStatDefinition{
	DestinyDisplayPropertiesDefinition displayProperties;
	int aggregationType;
	bool hasComputedBlock;
	int statCategory;
	int hash;
	int index;
	bool redacted;
	DestinyStatDefinition(
		DestinyDisplayPropertiesDefinition this.displayProperties,
		int this.aggregationType,
		bool this.hasComputedBlock,
		int this.statCategory,
		int this.hash,
		int this.index,
		bool this.redacted,
	);

	static DestinyStatDefinition fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyStatDefinition(
				DestinyDisplayPropertiesDefinition.fromJson(data['displayProperties']),
				data['aggregationType'],
				data['hasComputedBlock'],
				data['statCategory'],
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyStatDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyStatDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyStatDefinition.fromJson(item));
    });
    return list;
	}
}