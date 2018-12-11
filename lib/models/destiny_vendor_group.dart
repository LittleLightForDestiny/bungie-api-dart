class DestinyVendorGroup{
	int vendorGroupHash;
	List<int> vendorHashes;
	DestinyVendorGroup(
		int this.vendorGroupHash,
		List<int> this.vendorHashes,
	);

	static DestinyVendorGroup fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyVendorGroup(
				data['vendorGroupHash'],
				data['vendorHashes'],
		);
	}

	static List<DestinyVendorGroup> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyVendorGroup> list = new List();
    data.forEach((item) {
      list.add(DestinyVendorGroup.fromJson(item));
    });
    return list;
	}
}