class DestinyItemGearsetBlockDefinition{
	int trackingValueMax;
	List<int> itemList;
	DestinyItemGearsetBlockDefinition(
		this.trackingValueMax,
		this.itemList,
	);

	static DestinyItemGearsetBlockDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemGearsetBlockDefinition(
				data['trackingValueMax'],
				data['itemList'] != null ? data['itemList']?.cast<int>() ?? null : null,
		);
	}

	static List<DestinyItemGearsetBlockDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemGearsetBlockDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyItemGearsetBlockDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['trackingValueMax'] = this.trackingValueMax;
			data['itemList'] = this.itemList;
		return data;
	}
}