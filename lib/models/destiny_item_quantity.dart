class DestinyItemQuantity{
	int itemHash;
	int itemInstanceId;
	int quantity;
	DestinyItemQuantity(
		int this.itemHash,
		int this.itemInstanceId,
		int this.quantity,
	);

	static DestinyItemQuantity fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemQuantity(
				data['itemHash'],
				data['itemInstanceId'],
				data['quantity'],
		);
	}

	static List<DestinyItemQuantity> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemQuantity> list = new List();
    data.forEach((item) {
      list.add(DestinyItemQuantity.fromMap(item));
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