import 'destiny_display_properties_definition.dart';
class DestinyBubbleDefinition{
	int hash;
	DestinyDisplayPropertiesDefinition displayProperties;
	DestinyBubbleDefinition(
		int this.hash,
		DestinyDisplayPropertiesDefinition this.displayProperties,
	);

	static DestinyBubbleDefinition fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyBubbleDefinition(
				data['hash'],
				data['displayProperties'],
		);
	}

	static List<DestinyBubbleDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyBubbleDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyBubbleDefinition.fromJson(item));
    });
    return list;
	}
}