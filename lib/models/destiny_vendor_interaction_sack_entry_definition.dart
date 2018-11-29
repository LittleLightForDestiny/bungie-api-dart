class DestinyVendorInteractionSackEntryDefinition{
	int sackType;
	DestinyVendorInteractionSackEntryDefinition(
		int this.sackType,
	);

	static DestinyVendorInteractionSackEntryDefinition fromJson(Map<String, dynamic> data){
		return new DestinyVendorInteractionSackEntryDefinition(
				data['sackType'],
		);
	}

	static List<DestinyVendorInteractionSackEntryDefinition> fromList(List<dynamic> data){
		List<DestinyVendorInteractionSackEntryDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyVendorInteractionSackEntryDefinition.fromJson(item));
    });
    return list;
	}
}