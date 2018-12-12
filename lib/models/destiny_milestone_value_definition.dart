import 'destiny_display_properties_definition.dart';
class DestinyMilestoneValueDefinition{
	String key;
	DestinyDisplayPropertiesDefinition displayProperties;
	DestinyMilestoneValueDefinition(
		String this.key,
		DestinyDisplayPropertiesDefinition this.displayProperties,
	);

	static DestinyMilestoneValueDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyMilestoneValueDefinition(
				data['key'],
				DestinyDisplayPropertiesDefinition.fromMap(data['displayProperties']),
		);
	}

	static List<DestinyMilestoneValueDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyMilestoneValueDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyMilestoneValueDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['key'] = this.key;
			data['displayProperties'] = this.displayProperties.toMap();
		return data;
	}
}