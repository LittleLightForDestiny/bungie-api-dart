class DestinyVendorLocationDefinition{
	int destinationHash;
	String backgroundImagePath;
	DestinyVendorLocationDefinition(
		int this.destinationHash,
		String this.backgroundImagePath,
	);

	static DestinyVendorLocationDefinition fromJson(Map<String, dynamic> data){
		return new DestinyVendorLocationDefinition(
				data['destinationHash'],
				data['backgroundImagePath'],
		);
	}

	static List<DestinyVendorLocationDefinition> fromList(List<dynamic> data){
		List<DestinyVendorLocationDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyVendorLocationDefinition.fromJson(item));
    });
    return list;
	}
}