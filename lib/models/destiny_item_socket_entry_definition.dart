import 'destiny_item_socket_entry_plug_item_definition.dart';
import 'destiny_item_socket_entry_plug_item_randomized_definition.dart';
class DestinyItemSocketEntryDefinition{
	int socketTypeHash;
	int singleInitialItemHash;
	List<DestinyItemSocketEntryPlugItemDefinition> reusablePlugItems;
	bool preventInitializationOnVendorPurchase;
	bool hidePerksInItemTooltip;
	int plugSources;
	int reusablePlugSetHash;
	List<DestinyItemSocketEntryPlugItemRandomizedDefinition> randomizedPlugItems;
	bool defaultVisible;
	DestinyItemSocketEntryDefinition(
		int this.socketTypeHash,
		int this.singleInitialItemHash,
		List<DestinyItemSocketEntryPlugItemDefinition> this.reusablePlugItems,
		bool this.preventInitializationOnVendorPurchase,
		bool this.hidePerksInItemTooltip,
		int this.plugSources,
		int this.reusablePlugSetHash,
		List<DestinyItemSocketEntryPlugItemRandomizedDefinition> this.randomizedPlugItems,
		bool this.defaultVisible,
	);

	static DestinyItemSocketEntryDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemSocketEntryDefinition(
				data['socketTypeHash'],
				data['singleInitialItemHash'],
				DestinyItemSocketEntryPlugItemDefinition.fromList(data['reusablePlugItems']),
				data['preventInitializationOnVendorPurchase'],
				data['hidePerksInItemTooltip'],
				data['plugSources'],
				data['reusablePlugSetHash'],
				DestinyItemSocketEntryPlugItemRandomizedDefinition.fromList(data['randomizedPlugItems']),
				data['defaultVisible'],
		);
	}

	static List<DestinyItemSocketEntryDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemSocketEntryDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyItemSocketEntryDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['socketTypeHash'] = socketTypeHash;
			data['singleInitialItemHash'] = singleInitialItemHash;
			data['reusablePlugItems'] = reusablePlugItems.map((item)=>item.toMap());
			data['preventInitializationOnVendorPurchase'] = preventInitializationOnVendorPurchase;
			data['hidePerksInItemTooltip'] = hidePerksInItemTooltip;
			data['plugSources'] = plugSources;
			data['reusablePlugSetHash'] = reusablePlugSetHash;
			data['randomizedPlugItems'] = randomizedPlugItems.map((item)=>item.toMap());
			data['defaultVisible'] = defaultVisible;
	}
}