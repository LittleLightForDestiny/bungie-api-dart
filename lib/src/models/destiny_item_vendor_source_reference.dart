
import 'package:json_annotation/json_annotation.dart';
part 'destiny_item_vendor_source_reference.g.dart';

/// Represents that a vendor could sell this item, and provides a quick link to that vendor and sale item.
///  Note that we do not and cannot make a guarantee that the vendor will ever *actually* sell this item, only that the Vendor has a definition that indicates it *could* be sold.
///  Note also that a vendor may sell the same item in multiple &quot;ways&quot;, which means there may be multiple vendorItemIndexes for a single Vendor hash.
@JsonSerializable()
class DestinyItemVendorSourceReference {

	/// The identifier for the vendor that may sell this item.
	@JsonKey(name:'vendorHash')
	int vendorHash;

	/// The Vendor sale item indexes that represent the sale information for this item. The same vendor may sell an item in multiple &quot;ways&quot;, hence why this is a list. (for instance, a weapon may be &quot;sold&quot; as a reward in a quest, for Glimmer, and for Masterwork Cores: each of those ways would be represented by a different vendor sale item with a different index)
	@JsonKey(name:'vendorItemIndexes')
	List<int> vendorItemIndexes;
	DestinyItemVendorSourceReference();

	factory DestinyItemVendorSourceReference.fromJson(Map<String, dynamic> json) => _$DestinyItemVendorSourceReferenceFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyItemVendorSourceReferenceToJson(this);
}
