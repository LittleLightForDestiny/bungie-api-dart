import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_item_socket_entry_plug_item_definition.dart';
import '../enums/socket_plug_sources.dart';

part 'destiny_item_socket_entry_definition.g.dart';

/// The definition information for a specific socket on an item. This will determine how the socket behaves in-game.
@JsonSerializable()
class DestinyItemSocketEntryDefinition{	
	DestinyItemSocketEntryDefinition();

	
	/// All sockets have a type, and this is the hash identifier for this particular type. Use it to look up the DestinySocketTypeDefinition: read there for more information on how socket types affect the behavior of the socket.
	@JsonKey(name:'socketTypeHash')
	int? socketTypeHash;
	
	/// If a valid hash, this is the hash identifier for the DestinyInventoryItemDefinition representing the Plug that will be initially inserted into the item on item creation. Otherwise, this Socket will either start without a plug inserted, or will have one randomly inserted.
	@JsonKey(name:'singleInitialItemHash')
	int? singleInitialItemHash;
	
	/// This is a list of pre-determined plugs that can *always* be plugged into this socket, without the character having the plug in their inventory.
	/// If this list is populated, you will not be allowed to plug an arbitrary item in the socket: you will only be able to choose from one of these reusable plugs.
	@JsonKey(name:'reusablePlugItems')
	List<DestinyItemSocketEntryPlugItemDefinition>? reusablePlugItems;
	
	/// If this is true, then the socket will not be initialized with a plug if the item is purchased from a Vendor.
	/// Remember that Vendors are much more than conceptual vendors: they include "Collection Kiosks" and other entities. See DestinyVendorDefinition for more information.
	@JsonKey(name:'preventInitializationOnVendorPurchase')
	bool? preventInitializationOnVendorPurchase;
	
	/// If this is true, the perks provided by this socket shouldn't be shown in the item's tooltip. This might be useful if it's providing a hidden bonus, or if the bonus is less important than other benefits on the item.
	@JsonKey(name:'hidePerksInItemTooltip')
	bool? hidePerksInItemTooltip;
	
	/// Indicates where you should go to get plugs for this socket. This will affect how you populate your UI, as well as what plugs are valid for this socket. It's an alternative to having to check for the existence of certain properties (reusablePlugItems for example) to infer where plugs should come from.
	@JsonKey(name:'plugSources')
	SocketPlugSources? plugSources;
	
	/// If this socket's plugs come from a reusable DestinyPlugSetDefinition, this is the identifier for that set. We added this concept to reduce some major duplication that's going to come from sockets as replacements for what was once implemented as large sets of items and kiosks (like Emotes).
	///  As of Shadowkeep, these will come up much more frequently and be driven by game content rather than custom curation.
	@JsonKey(name:'reusablePlugSetHash')
	int? reusablePlugSetHash;
	
	/// This field replaces "randomizedPlugItems" as of Shadowkeep launch. If a socket has randomized plugs, this is a pointer to the set of plugs that could be used, as defined in DestinyPlugSetDefinition.
	///  If null, the item has no randomized plugs.
	@JsonKey(name:'randomizedPlugSetHash')
	int? randomizedPlugSetHash;
	
	/// If true, then this socket is visible in the item's "default" state. If you have an instance, you should always check the runtime state, as that can override this visibility setting: but if you're looking at the item on a conceptual level, this property can be useful for hiding data such as legacy sockets - which remain defined on items for infrastructure purposes, but can be confusing for users to see.
	@JsonKey(name:'defaultVisible')
	bool? defaultVisible;

	factory DestinyItemSocketEntryDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyItemSocketEntryDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyItemSocketEntryDefinitionToJson(this);

	static Future<DestinyItemSocketEntryDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyItemSocketEntryDefinition>((json)=>DestinyItemSocketEntryDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}