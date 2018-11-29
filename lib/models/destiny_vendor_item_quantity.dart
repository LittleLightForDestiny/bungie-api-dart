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
		return new DestinyVendorItemQuantity(
				data['itemHash'],
				data['itemInstanceId'],
				data['quantity'],
		);
	}

	static List<DestinyVendorItemQuantity> fromList(List<dynamic> data){
		List<DestinyVendorItemQuantity> list = new List();
    data.forEach((item) {
      list.add(DestinyVendorItemQuantity.fromJson(item));
    });
    return list;
	}
}