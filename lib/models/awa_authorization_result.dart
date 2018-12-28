
/**  */
class AwaAuthorizationResult{
	
	/** Indication of how the user responded to the request. If the value is "Approved" the actionToken will contain the token that can be presented when performing the advanced write action. */
	int userSelection;
	
	/**  */
	int responseReason;
	
	/** Message to the app developer to help understand the response. */
	String developerNote;
	
	/** Credential used to prove the user authorized an advanced write action. */
	String actionToken;
	
	/** This token may be used to perform the requested action this number of times, at a maximum. If this value is 0, then there is no limit. */
	int maximumNumberOfUses;
	
	/** Time, UTC, when token expires. */
	String validUntil;
	
	/** Advanced Write Action Type from the permission request. */
	int type;
	
	/** MembershipType from the permission request. */
	int membershipType;
	AwaAuthorizationResult(
		this.userSelection,
		this.responseReason,
		this.developerNote,
		this.actionToken,
		this.maximumNumberOfUses,
		this.validUntil,
		this.type,
		this.membershipType,
	);

	static AwaAuthorizationResult fromMap(Map<String, dynamic> data){
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
      list.add(AwaAuthorizationResult.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['userSelection'] = this.userSelection;
			data['responseReason'] = this.responseReason;
			data['developerNote'] = this.developerNote;
			data['actionToken'] = this.actionToken;
			data['maximumNumberOfUses'] = this.maximumNumberOfUses;
			data['validUntil'] = this.validUntil;
			data['type'] = this.type;
			data['membershipType'] = this.membershipType;
		return data;
	}
}