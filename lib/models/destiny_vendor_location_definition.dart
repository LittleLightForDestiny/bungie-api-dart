class DestinyVendorLocationDefinition{
	int destinationHash;
	String backgroundImagePath;
	DestinyVendorLocationDefinition(
		int this.destinationHash,
		String this.backgroundImagePath,
	);

	static DestinyVendorLocationDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyVendorLocationDefinition(
				data['destinationHash'],
				data['backgroundImagePath'],
		);
	}

	static List<DestinyVendorLocationDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyVendorLocationDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyVendorLocationDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['destinationHash'] = destinationHash;
			data['backgroundImagePath'] = backgroundImagePath;
	}
}