class DestinyVendorInteractionSackEntryDefinition{
	int sackType;
	DestinyVendorInteractionSackEntryDefinition(
		int this.sackType,
	);

	static DestinyVendorInteractionSackEntryDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyVendorInteractionSackEntryDefinition(
				data['sackType'],
		);
	}

	static List<DestinyVendorInteractionSackEntryDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyVendorInteractionSackEntryDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyVendorInteractionSackEntryDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['sackType'] = sackType;
	}
}