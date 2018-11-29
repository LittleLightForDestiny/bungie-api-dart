import 'destiny_display_properties_definition.dart';
import 'destiny_item_socket_entry_plug_item_definition.dart';
class DestinyPlugSetDefinition{
	DestinyDisplayPropertiesDefinition displayProperties;
	List<DestinyItemSocketEntryPlugItemDefinition> reusablePlugItems;
	int hash;
	int index;
	bool redacted;
	DestinyPlugSetDefinition(
		DestinyDisplayPropertiesDefinition this.displayProperties,
		List<DestinyItemSocketEntryPlugItemDefinition> this.reusablePlugItems,
		int this.hash,
		int this.index,
		bool this.redacted,
	);

	static DestinyPlugSetDefinition fromJson(Map<String, dynamic> data){
		return new DestinyPlugSetDefinition(
				data['displayProperties'],
				DestinyItemSocketEntryPlugItemDefinition.fromList(data['reusablePlugItems']),
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyPlugSetDefinition> fromList(List<dynamic> data){
		List<DestinyPlugSetDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyPlugSetDefinition.fromJson(item));
    });
    return list;
	}
}