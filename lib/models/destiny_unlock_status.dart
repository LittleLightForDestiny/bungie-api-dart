class DestinyUnlockStatus{
	int unlockHash;
	bool isSet;
	DestinyUnlockStatus(
		int this.unlockHash,
		bool this.isSet,
	);

	static DestinyUnlockStatus fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyUnlockStatus(
				data['unlockHash'],
				data['isSet'],
		);
	}

	static List<DestinyUnlockStatus> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyUnlockStatus> list = new List();
    data.forEach((item) {
      list.add(DestinyUnlockStatus.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['unlockHash'] = unlockHash;
			data['isSet'] = isSet;
	}
}