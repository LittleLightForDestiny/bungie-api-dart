
import 'package:json_annotation/json_annotation.dart';
part 'destiny_derived_item_definition.g.dart';

/// This is a reference to, and summary data for, a specific item that you can get as a result of Using or Acquiring some other Item (For example, this could be summary information for an Emote that you can get by opening an an Eververse Box) See DestinyDerivedItemCategoryDefinition for more information.
@JsonSerializable()
class DestinyDerivedItemDefinition {

	/// The hash for the DestinyInventoryItemDefinition of this derived item, if there is one. Sometimes we are given this information as a manual override, in which case there won&#39;t be an actual DestinyInventoryItemDefinition for what we display, but you can still show the strings from this object itself.
	@JsonKey(name:'itemHash')
	int itemHash;

	/// The name of the derived item.
	@JsonKey(name:'itemName')
	String itemName;

	/// Additional details about the derived item, in addition to the description.
	@JsonKey(name:'itemDetail')
	String itemDetail;

	/// A brief description of the item.
	@JsonKey(name:'itemDescription')
	String itemDescription;

	/// An icon for the item.
	@JsonKey(name:'iconPath')
	String iconPath;

	/// If the item was derived from a &quot;Preview Vendor&quot;, this will be an index into the DestinyVendorDefinition&#39;s itemList property. Otherwise, -1.
	@JsonKey(name:'vendorItemIndex')
	int vendorItemIndex;
	DestinyDerivedItemDefinition();

	factory DestinyDerivedItemDefinition.fromJson(Map<String, dynamic> json) => _$DestinyDerivedItemDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyDerivedItemDefinitionToJson(this);
}
