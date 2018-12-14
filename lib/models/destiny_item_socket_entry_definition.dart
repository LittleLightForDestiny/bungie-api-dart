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
		this.socketTypeHash,
		this.singleInitialItemHash,
		this.reusablePlugItems,
		this.preventInitializationOnVendorPurchase,
		this.hidePerksInItemTooltip,
		this.plugSources,
		this.reusablePlugSetHash,
		this.randomizedPlugItems,
		this.defaultVisible,
	);

	static DestinyItemSocketEntryDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemSocketEntryDefinition(
				data['socketTypeHash'],
				data['singleInitialItemHash'],
				data['reusablePlugItems'] != null ? DestinyItemSocketEntryPlugItemDefinition.fromList(data['reusablePlugItems']) : null,
				data['preventInitializationOnVendorPurchase'],
				data['hidePerksInItemTooltip'],
				data['plugSources'],
				data['reusablePlugSetHash'],
				data['randomizedPlugItems'] != null ? DestinyItemSocketEntryPlugItemRandomizedDefinition.fromList(data['randomizedPlugItems']) : null,
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
			data['reusablePlugItems'] = this.reusablePlugItems.map((item)=>item.toMap()).toList();
			data['preventInitializationOnVendorPurchase'] = this.preventInitializationOnVendorPurchase;
			data['hidePerksInItemTooltip'] = this.hidePerksInItemTooltip;
			data['plugSources'] = this.plugSources;
			data['reusablePlugSetHash'] = this.reusablePlugSetHash;
			data['randomizedPlugItems'] = this.randomizedPlugItems.map((item)=>item.toMap()).toList();
			data['defaultVisible'] = this.defaultVisible;
		return data;
	}
}