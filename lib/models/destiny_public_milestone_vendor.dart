class DestinyPublicMilestoneVendor{
	int vendorHash;
	int previewItemHash;
	DestinyPublicMilestoneVendor(
		int this.vendorHash,
		int this.previewItemHash,
	);

	static DestinyPublicMilestoneVendor fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyPublicMilestoneVendor(
				data['vendorHash'],
				data['previewItemHash'],
		);
	}

	static List<DestinyPublicMilestoneVendor> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyPublicMilestoneVendor> list = new List();
    data.forEach((item) {
      list.add(DestinyPublicMilestoneVendor.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['vendorHash'] = this.vendorHash;
			data['previewItemHash'] = this.previewItemHash;
		return data;
	}
}