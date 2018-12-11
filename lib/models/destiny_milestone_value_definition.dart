import 'destiny_display_properties_definition.dart';
class DestinyMilestoneValueDefinition{
	String key;
	DestinyDisplayPropertiesDefinition displayProperties;
	DestinyMilestoneValueDefinition(
		String this.key,
		DestinyDisplayPropertiesDefinition this.displayProperties,
	);

	static DestinyMilestoneValueDefinition fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyMilestoneValueDefinition(
				data['key'],
				DestinyDisplayPropertiesDefinition.fromJson(data['displayProperties']),
		);
	}

	static List<DestinyMilestoneValueDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyMilestoneValueDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyMilestoneValueDefinition.fromJson(item));
    });
    return list;
	}
}