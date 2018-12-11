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

	static DestinyItemSocketEntryDefinition fromJson(Map<String, dynamic> data){
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
      list.add(DestinyItemSocketEntryDefinition.fromJson(item));
    });
    return list;
	}
}