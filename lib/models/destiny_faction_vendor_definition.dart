class DestinyFactionVendorDefinition{
	int vendorHash;
	int destinationHash;
	String backgroundImagePath;
	DestinyFactionVendorDefinition(
		int this.vendorHash,
		int this.destinationHash,
		String this.backgroundImagePath,
	);

	static DestinyFactionVendorDefinition fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyFactionVendorDefinition(
				data['vendorHash'],
				data['destinationHash'],
				data['backgroundImagePath'],
		);
	}

	static List<DestinyFactionVendorDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyFactionVendorDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyFactionVendorDefinition.fromJson(item));
    });
    return list;
	}
}