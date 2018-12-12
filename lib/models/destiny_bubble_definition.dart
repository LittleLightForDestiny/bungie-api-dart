import 'destiny_display_properties_definition.dart';
class DestinyBubbleDefinition{
	int hash;
	DestinyDisplayPropertiesDefinition displayProperties;
	DestinyBubbleDefinition(
		int this.hash,
		DestinyDisplayPropertiesDefinition this.displayProperties,
	);

	static DestinyBubbleDefinition fromMap(Map<String, dynamic> data){
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
      list.add(DestinyBubbleDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['hash'] = this.hash;
			data['displayProperties'] = this.displayProperties;
		return data;
	}
}