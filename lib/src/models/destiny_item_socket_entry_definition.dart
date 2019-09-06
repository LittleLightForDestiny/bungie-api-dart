import 'destiny_item_socket_entry_plug_item_definition.dart';
import 'destiny_item_socket_entry_plug_item_randomized_definition.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_item_socket_entry_definition.g.dart';

/// The definition information for a specific socket on an item. This will determine how the socket behaves in-game.
@JsonSerializable()
class DestinyItemSocketEntryDefinition {

	/// All sockets have a type, and this is the hash identifier for this particular type. Use it to look up the DestinySocketTypeDefinition: read there for more information on how socket types affect the behavior of the socket.
	@JsonKey(name:'socketTypeHash')
	int socketTypeHash;

	/// If a valid hash, this is the hash identifier for the DestinyInventoryItemDefinition representing the Plug that will be initially inserted into the item on item creation. Otherwise, this Socket will either start without a plug inserted, or will have one randomly inserted.
	@JsonKey(name:'singleInitialItemHash')
	int singleInitialItemHash;

	/// This is a list of pre-determined plugs that can *always* be plugged into this socket, without the character having the plug in their inventory.
	/// If this list is populated, you will not be allowed to plug an arbitrary item in the socket: you will only be able to choose from one of these reusable plugs.
	@JsonKey(name:'reusablePlugItems')
	List<DestinyItemSocketEntryPlugItemDefinition> reusablePlugItems;

	/// If this is true, then the socket will not be initialized with a plug if the item is purchased from a Vendor.
	/// Remember that Vendors are much more than conceptual vendors: they include &quot;Collection Kiosks&quot; and other entities. See DestinyVendorDefinition for more information.
	@JsonKey(name:'preventInitializationOnVendorPurchase')
	bool preventInitializationOnVendorPurchase;

	/// If this is true, the perks provided by this socket shouldn&#39;t be shown in the item&#39;s tooltip. This might be useful if it&#39;s providing a hidden bonus, or if the bonus is less important than other benefits on the item.
	@JsonKey(name:'hidePerksInItemTooltip')
	bool hidePerksInItemTooltip;

	/// Indicates where you should go to get plugs for this socket. This will affect how you populate your UI, as well as what plugs are valid for this socket. It&#39;s an alternative to having to check for the existence of certain properties (reusablePlugItems for example) to infer where plugs should come from.
	@JsonKey(name:'plugSources')
	int plugSources;

	/// If this socket&#39;s plugs come from a reusable DestinyPlugSetDefinition, this is the identifier for that set. We added this concept to reduce some major duplication that&#39;s going to come from sockets as replacements for what was once implemented as large sets of items and kiosks (like Emotes).
	@JsonKey(name:'reusablePlugSetHash')
	int reusablePlugSetHash;

	/// As of Forsaken, item sockets can have randomized plugs. If this is populated, the live data will return a subset of plugs from this list that are active and able to be inserted into the socket just like a reusable plug.
	@JsonKey(name:'randomizedPlugItems')
	List<DestinyItemSocketEntryPlugItemRandomizedDefinition> randomizedPlugItems;

	/// If true, then this socket is visible in the item&#39;s &quot;default&quot; state. If you have an instance, you should always check the runtime state, as that can override this visibility setting: but if you&#39;re looking at the item on a conceptual level, this property can be useful for hiding data such as legacy sockets - which remain defined on items for infrastructure purposes, but can be confusing for users to see.
	@JsonKey(name:'defaultVisible')
	bool defaultVisible;
	DestinyItemSocketEntryDefinition();

	factory DestinyItemSocketEntryDefinition.fromJson(Map<String, dynamic> json) => _$DestinyItemSocketEntryDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyItemSocketEntryDefinitionToJson(this);
}
