class AwaPermissionRequested{
	int type;
	int affectedItemId;
	int membershipType;
	int characterId;
	AwaPermissionRequested(
		int this.type,
		int this.affectedItemId,
		int this.membershipType,
		int this.characterId,
	);

	static AwaPermissionRequested fromJson(Map<String, dynamic> data){
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
      list.add(AwaPermissionRequested.fromJson(item));
    });
    return list;
	}
}