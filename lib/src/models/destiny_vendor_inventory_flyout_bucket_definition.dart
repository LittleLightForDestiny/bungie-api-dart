
import 'package:json_annotation/json_annotation.dart';
part 'destiny_vendor_inventory_flyout_bucket_definition.g.dart';

/// Information about a single inventory bucket in a vendor flyout UI and how it is shown.
@JsonSerializable()
class DestinyVendorInventoryFlyoutBucketDefinition {

	/// If true, the inventory bucket should be able to be collapsed visually.
	@JsonKey(name:'collapsible')
	bool collapsible;

	/// The inventory bucket whose contents should be shown.
	@JsonKey(name:'inventoryBucketHash')
	int inventoryBucketHash;

	/// The methodology to use for sorting items from the flyout.
	@JsonKey(name:'sortItemsBy')
	int sortItemsBy;
	DestinyVendorInventoryFlyoutBucketDefinition();

	factory DestinyVendorInventoryFlyoutBucketDefinition.fromJson(Map<String, dynamic> json) => _$DestinyVendorInventoryFlyoutBucketDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyVendorInventoryFlyoutBucketDefinitionToJson(this);
}
