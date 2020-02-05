import 'package:json_annotation/json_annotation.dart';

import '../enums/destiny_item_sort_type.dart';

part 'destiny_vendor_inventory_flyout_bucket_definition.g.dart';

/// Information about a single inventory bucket in a vendor flyout UI and how it is shown.
@JsonSerializable()
class DestinyVendorInventoryFlyoutBucketDefinition{
	
	DestinyVendorInventoryFlyoutBucketDefinition();

	factory DestinyVendorInventoryFlyoutBucketDefinition.fromJson(Map<String, dynamic> json) => _$DestinyVendorInventoryFlyoutBucketDefinitionFromJson(json);

	/// If true, the inventory bucket should be able to be collapsed visually.
	@JsonKey(name:'collapsible')
	bool collapsible;
	/// The inventory bucket whose contents should be shown.
	@JsonKey(name:'inventoryBucketHash')
	int inventoryBucketHash;
	/// The methodology to use for sorting items from the flyout.
	@JsonKey(name:'sortItemsBy',unknownEnumValue:DestinyItemSortType.ItemId)
	DestinyItemSortType sortItemsBy;

	
	
	Map<String, dynamic> toJson() => _$DestinyVendorInventoryFlyoutBucketDefinitionToJson(this);
}