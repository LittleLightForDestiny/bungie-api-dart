
/* The results of an Equipping operation performed through the Destiny API. */
class DestinyEquipItemResult{
	
	/* The instance ID of the item in question (all items that can be equipped must, but definition, be Instanced and thus have an Instance ID that you can use to refer to them) */
	String itemInstanceId;
	
	/* A PlatformErrorCodes enum indicating whether it succeeded, and if it failed why. */
	int equipStatus;
	DestinyEquipItemResult(
		this.itemInstanceId,
		this.equipStatus,
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
			data['itemInstanceId'] = this.itemInstanceId;
			data['equipStatus'] = this.equipStatus;
		return data;
	}
}