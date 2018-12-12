class DestinyItemSackBlockDefinition{
	String detailAction;
	String openAction;
	int selectItemCount;
	String vendorSackType;
	bool openOnAcquire;
	DestinyItemSackBlockDefinition(
		String this.detailAction,
		String this.openAction,
		int this.selectItemCount,
		String this.vendorSackType,
		bool this.openOnAcquire,
	);

	static DestinyItemSackBlockDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemSackBlockDefinition(
				data['detailAction'],
				data['openAction'],
				data['selectItemCount'],
				data['vendorSackType'],
				data['openOnAcquire'],
		);
	}

	static List<DestinyItemSackBlockDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemSackBlockDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyItemSackBlockDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['detailAction'] = this.detailAction;
			data['openAction'] = this.openAction;
			data['selectItemCount'] = this.selectItemCount;
			data['vendorSackType'] = this.vendorSackType;
			data['openOnAcquire'] = this.openOnAcquire;
		return data;
	}
}