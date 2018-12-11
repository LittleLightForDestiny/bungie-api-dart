class DestinyEquipItemResult{
	int itemInstanceId;
	int equipStatus;
	DestinyEquipItemResult(
		int this.itemInstanceId,
		int this.equipStatus,
	);

	static DestinyEquipItemResult fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyEquipItemResult(
				data['itemInstanceId'],
				data['equipStatus'],
		);
	}

	static List<DestinyEquipItemResult> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyEquipItemResult> list = new List();
    data.forEach((item) {
      list.add(DestinyEquipItemResult.fromJson(item));
    });
    return list;
	}
}