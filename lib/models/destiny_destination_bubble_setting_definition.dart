import 'destiny_display_properties_definition.dart';
class DestinyDestinationBubbleSettingDefinition{
	DestinyDisplayPropertiesDefinition displayProperties;
	DestinyDestinationBubbleSettingDefinition(
		DestinyDisplayPropertiesDefinition this.displayProperties,
	);

	static DestinyDestinationBubbleSettingDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyDestinationBubbleSettingDefinition(
				DestinyDisplayPropertiesDefinition.fromMap(data['displayProperties']),
		);
	}

	static List<DestinyDestinationBubbleSettingDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyDestinationBubbleSettingDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyDestinationBubbleSettingDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['displayProperties'] = this.displayProperties.toMap();
		return data;
	}
}