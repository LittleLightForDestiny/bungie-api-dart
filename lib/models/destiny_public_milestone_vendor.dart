class DestinyPublicMilestoneVendor{
	int vendorHash;
	int previewItemHash;
	DestinyPublicMilestoneVendor(
		int this.vendorHash,
		int this.previewItemHash,
	);

	static DestinyPublicMilestoneVendor fromJson(Map<String, dynamic> data){
		return new DestinyPublicMilestoneVendor(
				data['vendorHash'],
				data['previewItemHash'],
		);
	}

	static List<DestinyPublicMilestoneVendor> fromList(List<dynamic> data){
		List<DestinyPublicMilestoneVendor> list = new List();
    data.forEach((item) {
      list.add(DestinyPublicMilestoneVendor.fromJson(item));
    });
    return list;
	}
}