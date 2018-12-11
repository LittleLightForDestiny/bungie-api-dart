class DestinyItemGearsetBlockDefinition{
	int trackingValueMax;
	List<int> itemList;
	DestinyItemGearsetBlockDefinition(
		int this.trackingValueMax,
		List<int> this.itemList,
	);

	static DestinyItemGearsetBlockDefinition fromJson(Map<String, dynamic> data){
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
      list.add(DestinyItemGearsetBlockDefinition.fromJson(item));
    });
    return list;
	}
}