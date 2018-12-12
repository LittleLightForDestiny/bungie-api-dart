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
			data['socketTypeHash'] = this.socketTypeHash;
			data['singleInitialItemHash'] = this.singleInitialItemHash;
			data['reusablePlugItems'] = this.reusablePlugItems.map((item)=>item.toMap());
			data['preventInitializationOnVendorPurchase'] = this.preventInitializationOnVendorPurchase;
			data['hidePerksInItemTooltip'] = this.hidePerksInItemTooltip;
			data['plugSources'] = this.plugSources;
			data['reusablePlugSetHash'] = this.reusablePlugSetHash;
			data['randomizedPlugItems'] = this.randomizedPlugItems.map((item)=>item.toMap());
			data['defaultVisible'] = this.defaultVisible;
		return data;
	}
}