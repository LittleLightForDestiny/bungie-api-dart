import 'destiny_display_properties_definition.dart';

/** Basic identifying data about the bubble. Combine with DestinyDestinationBubbleSettingDefinition - see DestinyDestinationDefinition.bubbleSettings for more information. */
class DestinyBubbleDefinition{
	
	/** The identifier for the bubble: only guaranteed to be unique within the Destination. */
	int hash;
	
	/** The display properties of this bubble, so you don't have to look them up in a separate list anymore. */
	DestinyDisplayPropertiesDefinition displayProperties;
	DestinyBubbleDefinition(
		this.hash,
		this.displayProperties,
	);

	static DestinyBubbleDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyBubbleDefinition(
				data['hash'],
				data['displayProperties'] != null ? DestinyDisplayPropertiesDefinition.fromMap(data['displayProperties']) : null,
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