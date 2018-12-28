
/** This contract supplies basic information commonly used to display a minimal amount of information about a user. Take care to not add more properties here unless the property applies in all (or at least the majority) of the situations where UserInfoCard is used. Avoid adding game specific or platform specific details here. In cases where UserInfoCard is a subset of the data needed in a contract, use UserInfoCard as a property of other contracts. */
class UserInfoCard{
	
	/** A platform specific additional display name - ex: psn Real Name, bnet Unique Name, etc. */
	String supplementalDisplayName;
	
	/** URL the Icon if available. */
	String iconPath;
	
	/** Type of the membership. */
	int membershipType;
	
	/** Membership ID as they user is known in the Accounts service */
	String membershipId;
	
	/** Display Name the player has chosen for themselves. The display name is optional when the data type is used as input to a platform API. */
	String displayName;
	UserInfoCard(
		this.supplementalDisplayName,
		this.iconPath,
		this.membershipType,
		this.membershipId,
		this.displayName,
	);

	static UserInfoCard fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new UserInfoCard(
				data['supplementalDisplayName'],
				data['iconPath'],
				data['membershipType'],
				data['membershipId'],
				data['displayName'],
		);
	}

	static List<UserInfoCard> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<UserInfoCard> list = new List();
    data.forEach((item) {
      list.add(UserInfoCard.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['supplementalDisplayName'] = this.supplementalDisplayName;
			data['iconPath'] = this.iconPath;
			data['membershipType'] = this.membershipType;
			data['membershipId'] = this.membershipId;
			data['displayName'] = this.displayName;
		return data;
	}
}