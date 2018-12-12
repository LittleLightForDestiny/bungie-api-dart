class DestinyMilestoneVendorDefinition{
	int vendorHash;
	DestinyMilestoneVendorDefinition(
		int this.vendorHash,
	);

	static DestinyMilestoneVendorDefinition fromMap(Map<String, dynamic> data){
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
      list.add(DestinyMilestoneVendorDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['vendorHash'] = vendorHash;
	}
}