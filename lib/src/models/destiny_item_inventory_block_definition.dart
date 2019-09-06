
import 'package:json_annotation/json_annotation.dart';
part 'destiny_item_inventory_block_definition.g.dart';

/// If the item can exist in an inventory - the overwhelming majority of them can and do - then this is the basic properties regarding the item&#39;s relationship with the inventory.
@JsonSerializable()
class DestinyItemInventoryBlockDefinition {

	/// If this string is populated, you can&#39;t have more than one stack with this label in a given inventory. Note that this is different from the equipping block&#39;s unique label, which is used for equipping uniqueness.
	@JsonKey(name:'stackUniqueLabel')
	String stackUniqueLabel;

	/// The maximum quantity of this item that can exist in a stack.
	@JsonKey(name:'maxStackSize')
	int maxStackSize;

	/// The hash identifier for the DestinyInventoryBucketDefinition to which this item belongs. I should have named this &quot;bucketHash&quot;, but too many things refer to it now. Sigh.
	@JsonKey(name:'bucketTypeHash')
	int bucketTypeHash;

	/// If the item is picked up by the lost loot queue, this is the hash identifier for the DestinyInventoryBucketDefinition into which it will be placed. Again, I should have named this recoveryBucketHash instead.
	@JsonKey(name:'recoveryBucketTypeHash')
	int recoveryBucketTypeHash;

	/// The hash identifier for the Tier Type of the item, use to look up its DestinyItemTierTypeDefinition if you need to show localized data for the item&#39;s tier.
	@JsonKey(name:'tierTypeHash')
	int tierTypeHash;

	/// If TRUE, this item is instanced. Otherwise, it is a generic item that merely has a quantity in a stack (like Glimmer).
	@JsonKey(name:'isInstanceItem')
	bool isInstanceItem;

	/// The localized name of the tier type, which is a useful shortcut so you don&#39;t have to look up the definition every time. However, it&#39;s mostly a holdover from days before we had a DestinyItemTierTypeDefinition to refer to.
	@JsonKey(name:'tierTypeName')
	String tierTypeName;

	/// The enumeration matching the tier type of the item to known values, again for convenience sake.
	@JsonKey(name:'tierType')
	int tierType;

	/// The tooltip message to show, if any, when the item expires.
	@JsonKey(name:'expirationTooltip')
	String expirationTooltip;

	/// If the item expires while playing in an activity, we show a different message.
	@JsonKey(name:'expiredInActivityMessage')
	String expiredInActivityMessage;

	/// If the item expires in orbit, we show a... more different message. (&quot;Consummate V&#39;s, consummate!&quot;)
	@JsonKey(name:'expiredInOrbitMessage')
	String expiredInOrbitMessage;

	@JsonKey(name:'suppressExpirationWhenObjectivesComplete')
	bool suppressExpirationWhenObjectivesComplete;
	DestinyItemInventoryBlockDefinition();

	factory DestinyItemInventoryBlockDefinition.fromJson(Map<String, dynamic> json) => _$DestinyItemInventoryBlockDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyItemInventoryBlockDefinitionToJson(this);
}
