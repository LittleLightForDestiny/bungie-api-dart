class DestinyUnlockStatus{
	int unlockHash;
	bool isSet;
	DestinyUnlockStatus(
		int this.unlockHash,
		bool this.isSet,
	);

	static DestinyUnlockStatus fromJson(Map<String, dynamic> data){
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
      list.add(DestinyUnlockStatus.fromJson(item));
    });
    return list;
	}
}