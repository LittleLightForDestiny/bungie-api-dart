class DestinyDerivedItemDefinition{
	int itemHash;
	String itemName;
	String itemDetail;
	String itemDescription;
	String iconPath;
	int vendorItemIndex;
	DestinyDerivedItemDefinition(
		int this.itemHash,
		String this.itemName,
		String this.itemDetail,
		String this.itemDescription,
		String this.iconPath,
		int this.vendorItemIndex,
	);

	static DestinyDerivedItemDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyDerivedItemDefinition(
				data['itemHash'],
				data['itemName'],
				data['itemDetail'],
				data['itemDescription'],
				data['iconPath'],
				data['vendorItemIndex'],
		);
	}

	static List<DestinyDerivedItemDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyDerivedItemDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyDerivedItemDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['itemHash'] = itemHash;
			data['itemName'] = itemName;
			data['itemDetail'] = itemDetail;
			data['itemDescription'] = itemDescription;
			data['iconPath'] = iconPath;
			data['vendorItemIndex'] = vendorItemIndex;
	}
}