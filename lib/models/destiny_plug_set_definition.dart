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

	static DestinyPlugSetDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyPlugSetDefinition(
				data['displayProperties'],
				DestinyItemSocketEntryPlugItemDefinition.fromList(data['reusablePlugItems']),
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyPlugSetDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyPlugSetDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyPlugSetDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['displayProperties'] = displayProperties;
			data['reusablePlugItems'] = reusablePlugItems.map((item)=>item.toMap());
			data['hash'] = hash;
			data['index'] = index;
			data['redacted'] = redacted;
	}
}