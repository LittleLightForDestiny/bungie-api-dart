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
		this.displayProperties,
		this.aggregationType,
		this.hasComputedBlock,
		this.statCategory,
		this.hash,
		this.index,
		this.redacted,
	);

	static DestinyStatDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyStatDefinition(
				data['displayProperties'] != null ? DestinyDisplayPropertiesDefinition.fromMap(data['displayProperties']) : null,
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
      list.add(DestinyStatDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['displayProperties'] = this.displayProperties.toMap();
			data['aggregationType'] = this.aggregationType;
			data['hasComputedBlock'] = this.hasComputedBlock;
			data['statCategory'] = this.statCategory;
			data['hash'] = this.hash;
			data['index'] = this.index;
			data['redacted'] = this.redacted;
		return data;
	}
}