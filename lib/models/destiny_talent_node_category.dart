import 'destiny_display_properties_definition.dart';
class DestinyTalentNodeCategory{
	String identifier;
	bool isLoreDriven;
	DestinyDisplayPropertiesDefinition displayProperties;
	List<int> nodeHashes;
	DestinyTalentNodeCategory(
		String this.identifier,
		bool this.isLoreDriven,
		DestinyDisplayPropertiesDefinition this.displayProperties,
		List<int> this.nodeHashes,
	);

	static DestinyTalentNodeCategory fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyTalentNodeCategory(
				data['identifier'],
				data['isLoreDriven'],
				data['displayProperties'],
				data['nodeHashes'],
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
			data['identifier'] = identifier;
			data['isLoreDriven'] = isLoreDriven;
			data['displayProperties'] = displayProperties;
			data['nodeHashes'] = nodeHashes;
	}
}