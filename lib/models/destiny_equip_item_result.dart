class DestinyEquipItemResult{
	int itemInstanceId;
	int equipStatus;
	DestinyEquipItemResult(
		int this.itemInstanceId,
		int this.equipStatus,
	);

	static DestinyEquipItemResult fromMap(Map<String, dynamic> data){
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
      list.add(DestinyEquipItemResult.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['itemInstanceId'] = itemInstanceId;
			data['equipStatus'] = equipStatus;
	}
}