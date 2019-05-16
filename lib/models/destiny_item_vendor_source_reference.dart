
/** Represents that a vendor could sell this item, and provides a quick link to that vendor and sale item.
 Note that we do not and cannot make a guarantee that the vendor will ever *actually* sell this item, only that the Vendor has a definition that indicates it *could* be sold.
 Note also that a vendor may sell the same item in multiple "ways", which means there may be multiple vendorItemIndexes for a single Vendor hash. */
class DestinyItemVendorSourceReference{
	
	/** The identifier for the vendor that may sell this item. */
	int vendorHash;
	
	/** The Vendor sale item indexes that represent the sale information for this item. The same vendor may sell an item in multiple "ways", hence why this is a list. (for instance, a weapon may be "sold" as a reward in a quest, for Glimmer, and for Masterwork Cores: each of those ways would be represented by a different vendor sale item with a different index) */
	List<int> vendorItemIndexes;
	DestinyItemVendorSourceReference(
		this.vendorHash,
		this.vendorItemIndexes,
	);

	static DestinyItemVendorSourceReference fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemVendorSourceReference(
				data['vendorHash'],
				data['vendorItemIndexes'] != null ? data['vendorItemIndexes']?.cast<int>() ?? null : null,
		);
	}

	static List<DestinyItemVendorSourceReference> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemVendorSourceReference> list = new List();
    data.forEach((item) {
      list.add(DestinyItemVendorSourceReference.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['vendorHash'] = this.vendorHash;
			data['vendorItemIndexes'] = this.vendorItemIndexes;
		return data;
	}
}