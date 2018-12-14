import 'destiny_display_properties_definition.dart';
class DestinyTalentNodeCategory{
	String identifier;
	bool isLoreDriven;
	DestinyDisplayPropertiesDefinition displayProperties;
	List<int> nodeHashes;
	DestinyTalentNodeCategory(
		this.identifier,
		this.isLoreDriven,
		this.displayProperties,
		this.nodeHashes,
	);

	static DestinyTalentNodeCategory fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyTalentNodeCategory(
				data['identifier'],
				data['isLoreDriven'],
				data['displayProperties'] != null ? DestinyDisplayPropertiesDefinition.fromMap(data['displayProperties']) : null,
				data['nodeHashes'] != null ? data['nodeHashes']?.cast<int>() ?? null : null,
		);
	}

	static List<DestinyTalentNodeCategory> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyTalentNodeCategory> list = new List();
    data.forEach((item) {
      list.add(DestinyTalentNodeCategory.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['identifier'] = this.identifier;
			data['isLoreDriven'] = this.isLoreDriven;
			data['displayProperties'] = this.displayProperties;
			data['nodeHashes'] = this.nodeHashes;
		return data;
	}
}