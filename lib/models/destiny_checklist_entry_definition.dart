import 'destiny_display_properties_definition.dart';
class DestinyChecklistEntryDefinition{
	int hash;
	DestinyDisplayPropertiesDefinition displayProperties;
	int destinationHash;
	int locationHash;
	int bubbleHash;
	int activityHash;
	int itemHash;
	int vendorHash;
	int vendorInteractionIndex;
	int scope;
	DestinyChecklistEntryDefinition(
		int this.hash,
		DestinyDisplayPropertiesDefinition this.displayProperties,
		int this.destinationHash,
		int this.locationHash,
		int this.bubbleHash,
		int this.activityHash,
		int this.itemHash,
		int this.vendorHash,
		int this.vendorInteractionIndex,
		int this.scope,
	);

	static DestinyChecklistEntryDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyChecklistEntryDefinition(
				data['hash'],
				data['displayProperties'],
				data['destinationHash'],
				data['locationHash'],
				data['bubbleHash'],
				data['activityHash'],
				data['itemHash'],
				data['vendorHash'],
				data['vendorInteractionIndex'],
				data['scope'],
		);
	}

	static List<DestinyChecklistEntryDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyChecklistEntryDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyChecklistEntryDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['hash'] = this.hash;
			data['displayProperties'] = this.displayProperties;
			data['destinationHash'] = this.destinationHash;
			data['locationHash'] = this.locationHash;
			data['bubbleHash'] = this.bubbleHash;
			data['activityHash'] = this.activityHash;
			data['itemHash'] = this.itemHash;
			data['vendorHash'] = this.vendorHash;
			data['vendorInteractionIndex'] = this.vendorInteractionIndex;
			data['scope'] = this.scope;
		return data;
	}
}