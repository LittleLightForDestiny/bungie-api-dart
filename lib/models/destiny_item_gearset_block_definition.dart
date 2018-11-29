class DestinyItemGearsetBlockDefinition{
	int trackingValueMax;
	List<int> itemList;
	DestinyItemGearsetBlockDefinition(
		int this.trackingValueMax,
		List<int> this.itemList,
	);

	static DestinyItemGearsetBlockDefinition fromJson(Map<String, dynamic> data){
		return new DestinyItemGearsetBlockDefinition(
				data['trackingValueMax'],
				data['itemList'],
		);
	}

	static List<DestinyItemGearsetBlockDefinition> fromList(List<dynamic> data){
		List<DestinyItemGearsetBlockDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyItemGearsetBlockDefinition.fromJson(item));
    });
    return list;
	}
}