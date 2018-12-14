class DestinyVendorItemSocketOverride{
	int singleItemHash;
	int randomizedOptionsCount;
	int socketTypeHash;
	DestinyVendorItemSocketOverride(
		this.singleItemHash,
		this.randomizedOptionsCount,
		this.socketTypeHash,
	);

	static DestinyVendorItemSocketOverride fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyVendorItemSocketOverride(
				data['singleItemHash'],
				data['randomizedOptionsCount'],
				data['socketTypeHash'],
		);
	}

	static List<DestinyVendorItemSocketOverride> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyVendorItemSocketOverride> list = new List();
    data.forEach((item) {
      list.add(DestinyVendorItemSocketOverride.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['singleItemHash'] = this.singleItemHash;
			data['randomizedOptionsCount'] = this.randomizedOptionsCount;
			data['socketTypeHash'] = this.socketTypeHash;
		return data;
	}
}