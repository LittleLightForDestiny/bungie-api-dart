class AwaPermissionRequested{
	int type;
	String affectedItemId;
	int membershipType;
	String characterId;
	AwaPermissionRequested(
		int this.type,
		String this.affectedItemId,
		int this.membershipType,
		String this.characterId,
	);

	static AwaPermissionRequested fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new AwaPermissionRequested(
				data['type'],
				data['affectedItemId'],
				data['membershipType'],
				data['characterId'],
		);
	}

	static List<AwaPermissionRequested> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<AwaPermissionRequested> list = new List();
    data.forEach((item) {
      list.add(AwaPermissionRequested.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['type'] = this.type;
			data['affectedItemId'] = this.affectedItemId;
			data['membershipType'] = this.membershipType;
			data['characterId'] = this.characterId;
		return data;
	}
}