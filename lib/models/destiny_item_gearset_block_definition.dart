class DestinyItemGearsetBlockDefinition{
	int trackingValueMax;
	List<int> itemList;
	DestinyItemGearsetBlockDefinition(
		int this.trackingValueMax,
		List<int> this.itemList,
	);

	static DestinyItemGearsetBlockDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemGearsetBlockDefinition(
				data['trackingValueMax'],
				data['itemList'],
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
			data['trackingValueMax'] = trackingValueMax;
			data['itemList'] = itemList;
	}
}