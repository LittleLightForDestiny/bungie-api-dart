class DestinyVendorGroupReference{
	int vendorGroupHash;
	DestinyVendorGroupReference(
		int this.vendorGroupHash,
	);

	static DestinyVendorGroupReference fromJson(Map<String, dynamic> data){
		return new DestinyVendorGroupReference(
				data['vendorGroupHash'],
		);
	}

	static List<DestinyVendorGroupReference> fromList(List<dynamic> data){
		List<DestinyVendorGroupReference> list = new List();
    data.forEach((item) {
      list.add(DestinyVendorGroupReference.fromJson(item));
    });
    return list;
	}
}