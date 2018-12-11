import 'destiny_display_properties_definition.dart';
class DestinyDestinationBubbleSettingDefinition{
	DestinyDisplayPropertiesDefinition displayProperties;
	DestinyDestinationBubbleSettingDefinition(
		DestinyDisplayPropertiesDefinition this.displayProperties,
	);

	static DestinyDestinationBubbleSettingDefinition fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyDestinationBubbleSettingDefinition(
				DestinyDisplayPropertiesDefinition.fromJson(data['displayProperties']),
		);
	}

	static List<DestinyDestinationBubbleSettingDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyDestinationBubbleSettingDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyDestinationBubbleSettingDefinition.fromJson(item));
    });
    return list;
	}
}