class DestinyVendorItemQuantity{
	int itemHash;
	int itemInstanceId;
	int quantity;
	DestinyVendorItemQuantity(
		int this.itemHash,
		int this.itemInstanceId,
		int this.quantity,
	);

	static DestinyVendorItemQuantity fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyVendorItemQuantity(
				data['itemHash'],
				data['itemInstanceId'],
				data['quantity'],
		);
	}

	static List<DestinyVendorItemQuantity> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyVendorItemQuantity> list = new List();
    data.forEach((item) {
      list.add(DestinyVendorItemQuantity.fromJson(item));
    });
    return list;
	}
}