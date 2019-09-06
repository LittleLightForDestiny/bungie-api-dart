import 'destiny_item_quantity.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_item_value_block_definition.g.dart';

/// This defines an item&#39;s &quot;Value&quot;. Unfortunately, this appears to be used in different ways depending on the way that the item itself is used.
/// For items being sold at a Vendor, this is the default &quot;sale price&quot; of the item. These days, the vendor itself almost always sets the price, but it still possible for the price to fall back to this value. For quests, it is a preview of rewards you can gain by completing the quest. For dummy items, if the itemValue refers to an Emblem, it is the emblem that should be shown as the reward. (jeez louise)
/// It will likely be used in a number of other ways in the future, it appears to be a bucket where they put arbitrary items and quantities into the item.
@JsonSerializable()
class DestinyItemValueBlockDefinition {

	/// References to the items that make up this item&#39;s &quot;value&quot;, and the quantity.
	@JsonKey(name:'itemValue')
	List<DestinyItemQuantity> itemValue;

	/// If there&#39;s a localized text description of the value provided, this will be said description.
	@JsonKey(name:'valueDescription')
	String valueDescription;
	DestinyItemValueBlockDefinition();

	factory DestinyItemValueBlockDefinition.fromJson(Map<String, dynamic> json) => _$DestinyItemValueBlockDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyItemValueBlockDefinitionToJson(this);
}
