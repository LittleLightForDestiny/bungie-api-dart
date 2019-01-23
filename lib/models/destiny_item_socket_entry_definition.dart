import 'destiny_item_socket_entry_plug_item_definition.dart';
import 'destiny_item_socket_entry_plug_item_randomized_definition.dart';

/** The definition information for a specific socket on an item. This will determine how the socket behaves in-game. */
class DestinyItemSocketEntryDefinition{
	
	/** All sockets have a type, and this is the hash identifier for this particular type. Use it to look up the DestinySocketTypeDefinition: read there for more information on how socket types affect the behavior of the socket. */
	int socketTypeHash;
	
	/** If a valid hash, this is the hash identifier for the DestinyInventoryItemDefinition representing the Plug that will be initially inserted into the item on item creation. Otherwise, this Socket will either start without a plug inserted, or will have one randomly inserted. */
	int singleInitialItemHash;
	
	/** This is a list of pre-determined plugs that can *always* be plugged into this socket, without the character having the plug in their inventory.
If this list is populated, you will not be allowed to plug an arbitrary item in the socket: you will only be able to choose from one of these reusable plugs. */
	List<DestinyItemSocketEntryPlugItemDefinition> reusablePlugItems;
	
	/** If this is true, then the socket will not be initialized with a plug if the item is purchased from a Vendor.
Remember that Vendors are much more than conceptual vendors: they include "Collection Kiosks" and other entities. See DestinyVendorDefinition for more information. */
	bool preventInitializationOnVendorPurchase;
	
	/** If this is true, the perks provided by this socket shouldn't be shown in the item's tooltip. This might be useful if it's providing a hidden bonus, or if the bonus is less important than other benefits on the item. */
	bool hidePerksInItemTooltip;
	
	/** Indicates where you should go to get plugs for this socket. This will affect how you populate your UI, as well as what plugs are valid for this socket. It's an alternative to having to check for the existence of certain properties (reusablePlugItems for example) to infer where plugs should come from. */
	int plugSources;
	
	/** If this socket's plugs come from a reusable DestinyPlugSetDefinition, this is the identifier for that set. We added this concept to reduce some major duplication that's going to come from sockets as replacements for what was once implemented as large sets of items and kiosks (like Emotes). */
	int reusablePlugSetHash;
	
	/** As of Forsaken, item sockets can have randomized plugs. If this is populated, the live data will return a subset of plugs from this list that are active and able to be inserted into the socket just like a reusable plug. */
	List<DestinyItemSocketEntryPlugItemRandomizedDefinition> randomizedPlugItems;
	
	/** If true, then this socket is visible in the item's "default" state. If you have an instance, you should always check the runtime state, as that can override this visibility setting: but if you're looking at the item on a conceptual level, this property can be useful for hiding data such as legacy sockets - which remain defined on items for infrastructure purposes, but can be confusing for users to see. */
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
			data['reusablePlugItems'] = this.reusablePlugItems != null? this.reusablePlugItems.map((item)=>item.toMap()).toList() : null;
			data['preventInitializationOnVendorPurchase'] = this.preventInitializationOnVendorPurchase;
			data['hidePerksInItemTooltip'] = this.hidePerksInItemTooltip;
			data['plugSources'] = this.plugSources;
			data['reusablePlugSetHash'] = this.reusablePlugSetHash;
			data['randomizedPlugItems'] = this.randomizedPlugItems != null? this.randomizedPlugItems.map((item)=>item.toMap()).toList() : null;
			data['defaultVisible'] = this.defaultVisible;
		return data;
	}
}