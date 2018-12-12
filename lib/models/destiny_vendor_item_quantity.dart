class DestinyVendorItemQuantity{
	int itemHash;
	String itemInstanceId;
	int quantity;
	DestinyVendorItemQuantity(
		int this.itemHash,
		String this.itemInstanceId,
		int this.quantity,
	);

	static DestinyVendorItemQuantity fromMap(Map<String, dynamic> data){
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
      list.add(DestinyVendorItemQuantity.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['itemHash'] = this.itemHash;
			data['itemInstanceId'] = this.itemInstanceId;
			data['quantity'] = this.quantity;
		return data;
	}
}