class DestinyMilestoneVendorDefinition{
	int vendorHash;
	DestinyMilestoneVendorDefinition(
		int this.vendorHash,
	);

	static DestinyMilestoneVendorDefinition fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyMilestoneVendorDefinition(
				data['vendorHash'],
		);
	}

	static List<DestinyMilestoneVendorDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyMilestoneVendorDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyMilestoneVendorDefinition.fromJson(item));
    });
    return list;
	}
}