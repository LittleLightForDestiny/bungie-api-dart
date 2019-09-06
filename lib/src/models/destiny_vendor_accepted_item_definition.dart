
import 'package:json_annotation/json_annotation.dart';
part 'destiny_vendor_accepted_item_definition.g.dart';

/// If you ever wondered how the Vault works, here it is.
/// The Vault is merely a set of inventory buckets that exist on your Profile&#x2F;Account level. When you transfer items in the Vault, the game is using the Vault Vendor&#39;s DestinyVendorAcceptedItemDefinitions to see where the appropriate destination bucket is for the source bucket from whence your item is moving. If it finds such an entry, it transfers the item to the other bucket.
/// The mechanics for Postmaster works similarly, which is also a vendor. All driven by Accepted Items.
@JsonSerializable()
class DestinyVendorAcceptedItemDefinition {

	/// The &quot;source&quot; bucket for a transfer. When a user wants to transfer an item, the appropriate DestinyVendorDefinition&#39;s acceptedItems property is evaluated, looking for an entry where acceptedInventoryBucketHash matches the bucket that the item being transferred is currently located. If it exists, the item will be transferred into whatever bucket is defined by destinationInventoryBucketHash.
	@JsonKey(name:'acceptedInventoryBucketHash')
	int acceptedInventoryBucketHash;

	/// This is the bucket where the item being transferred will be put, given that it was being transferred *from* the bucket defined in acceptedInventoryBucketHash.
	@JsonKey(name:'destinationInventoryBucketHash')
	int destinationInventoryBucketHash;
	DestinyVendorAcceptedItemDefinition();

	factory DestinyVendorAcceptedItemDefinition.fromJson(Map<String, dynamic> json) => _$DestinyVendorAcceptedItemDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyVendorAcceptedItemDefinitionToJson(this);
}
