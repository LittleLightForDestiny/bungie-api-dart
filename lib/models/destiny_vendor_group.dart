
/** Represents a specific group of vendors that can be rendered in the recommended order.
How do we figure out this order? It's a long story, and will likely get more complicated over time. */
class DestinyVendorGroup{
	
	/**  */
	int vendorGroupHash;
	
	/** The ordered list of vendors within a particular group. */
	List<int> vendorHashes;
	DestinyVendorGroup(
		this.vendorGroupHash,
		this.vendorHashes,
	);

	static DestinyVendorGroup fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyVendorGroup(
				data['vendorGroupHash'],
				data['vendorHashes'] != null ? data['vendorHashes']?.cast<int>() ?? null : null,
		);
	}

	static List<DestinyVendorGroup> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyVendorGroup> list = new List();
    data.forEach((item) {
      list.add(DestinyVendorGroup.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['vendorGroupHash'] = this.vendorGroupHash;
			data['vendorHashes'] = this.vendorHashes;
		return data;
	}
}