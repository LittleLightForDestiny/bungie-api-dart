class DestinyMilestoneVendor{
	int vendorHash;
	int previewItemHash;
	DestinyMilestoneVendor(
		int this.vendorHash,
		int this.previewItemHash,
	);

	static DestinyMilestoneVendor fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyMilestoneVendor(
				data['vendorHash'],
				data['previewItemHash'],
		);
	}

	static List<DestinyMilestoneVendor> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyMilestoneVendor> list = new List();
    data.forEach((item) {
      list.add(DestinyMilestoneVendor.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['vendorHash'] = vendorHash;
			data['previewItemHash'] = previewItemHash;
	}
}