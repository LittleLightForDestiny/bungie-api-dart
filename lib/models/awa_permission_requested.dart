
/*  */
class AwaPermissionRequested{
	
	/* Type of advanced write action. */
	int type;
	
	/* Item instance ID the action shall be applied to. This is optional for all but a new AwaType values. Rule of thumb is to provide the item instance ID if one is available. */
	String affectedItemId;
	
	/* Destiny membership type of the account to modify. */
	int membershipType;
	
	/* Destiny character ID, if applicable, that will be affected by the action. */
	String characterId;
	AwaPermissionRequested(
		this.type,
		this.affectedItemId,
		this.membershipType,
		this.characterId,
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