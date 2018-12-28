
/*  */
class DestinyProfileUserInfoCard{
	
	/*  */
	String dateLastPlayed;
	
	/* A platform specific additional display name - ex: psn Real Name, bnet Unique Name, etc. */
	String supplementalDisplayName;
	
	/* URL the Icon if available. */
	String iconPath;
	
	/* Type of the membership. */
	int membershipType;
	
	/* Membership ID as they user is known in the Accounts service */
	String membershipId;
	
	/* Display Name the player has chosen for themselves. The display name is optional when the data type is used as input to a platform API. */
	String displayName;
	DestinyProfileUserInfoCard(
		this.dateLastPlayed,
		this.supplementalDisplayName,
		this.iconPath,
		this.membershipType,
		this.membershipId,
		this.displayName,
	);

	static DestinyProfileUserInfoCard fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyProfileUserInfoCard(
				data['dateLastPlayed'],
				data['supplementalDisplayName'],
				data['iconPath'],
				data['membershipType'],
				data['membershipId'],
				data['displayName'],
		);
	}

	static List<DestinyProfileUserInfoCard> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyProfileUserInfoCard> list = new List();
    data.forEach((item) {
      list.add(DestinyProfileUserInfoCard.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['dateLastPlayed'] = this.dateLastPlayed;
			data['supplementalDisplayName'] = this.supplementalDisplayName;
			data['iconPath'] = this.iconPath;
			data['membershipType'] = this.membershipType;
			data['membershipId'] = this.membershipId;
			data['displayName'] = this.displayName;
		return data;
	}
}