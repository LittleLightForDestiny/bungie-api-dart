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

	static DestinyChecklistEntryDefinition fromJson(Map<String, dynamic> data){
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
		List<DestinyChecklistEntryDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyChecklistEntryDefinition.fromJson(item));
    });
    return list;
	}
}