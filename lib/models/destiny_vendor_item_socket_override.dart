class DestinyVendorItemSocketOverride{
	int singleItemHash;
	int randomizedOptionsCount;
	int socketTypeHash;
	DestinyVendorItemSocketOverride(
		int this.singleItemHash,
		int this.randomizedOptionsCount,
		int this.socketTypeHash,
	);

	static DestinyVendorItemSocketOverride fromJson(Map<String, dynamic> data){
		return new DestinyVendorItemSocketOverride(
				data['singleItemHash'],
				data['randomizedOptionsCount'],
				data['socketTypeHash'],
		);
	}

	static List<DestinyVendorItemSocketOverride> fromList(List<dynamic> data){
		List<DestinyVendorItemSocketOverride> list = new List();
    data.forEach((item) {
      list.add(DestinyVendorItemSocketOverride.fromJson(item));
    });
    return list;
	}
}