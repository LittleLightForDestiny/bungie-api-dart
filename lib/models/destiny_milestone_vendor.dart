class DestinyMilestoneVendor{
	int vendorHash;
	int previewItemHash;
	DestinyMilestoneVendor(
		int this.vendorHash,
		int this.previewItemHash,
	);

	static DestinyMilestoneVendor fromJson(Map<String, dynamic> data){
		return new DestinyMilestoneVendor(
				data['vendorHash'],
				data['previewItemHash'],
		);
	}

	static List<DestinyMilestoneVendor> fromList(List<dynamic> data){
		List<DestinyMilestoneVendor> list = new List();
    data.forEach((item) {
      list.add(DestinyMilestoneVendor.fromJson(item));
    });
    return list;
	}
}