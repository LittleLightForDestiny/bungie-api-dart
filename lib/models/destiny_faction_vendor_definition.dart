class DestinyFactionVendorDefinition{
	int vendorHash;
	int destinationHash;
	String backgroundImagePath;
	DestinyFactionVendorDefinition(
		this.vendorHash,
		this.destinationHash,
		this.backgroundImagePath,
	);

	static DestinyFactionVendorDefinition fromMap(Map<String, dynamic> data){
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
      list.add(DestinyFactionVendorDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['vendorHash'] = this.vendorHash;
			data['destinationHash'] = this.destinationHash;
			data['backgroundImagePath'] = this.backgroundImagePath;
		return data;
	}
}