class AwaAuthorizationResult{
	int userSelection;
	int responseReason;
	String developerNote;
	String actionToken;
	int maximumNumberOfUses;
	String validUntil;
	int type;
	int membershipType;
	AwaAuthorizationResult(
		int this.userSelection,
		int this.responseReason,
		String this.developerNote,
		String this.actionToken,
		int this.maximumNumberOfUses,
		String this.validUntil,
		int this.type,
		int this.membershipType,
	);

	static AwaAuthorizationResult fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new AwaAuthorizationResult(
				data['userSelection'],
				data['responseReason'],
				data['developerNote'],
				data['actionToken'],
				data['maximumNumberOfUses'],
				data['validUntil'],
				data['type'],
				data['membershipType'],
		);
	}

	static List<AwaAuthorizationResult> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<AwaAuthorizationResult> list = new List();
    data.forEach((item) {
      list.add(AwaAuthorizationResult.fromJson(item));
    });
    return list;
	}
}