class DestinyProfileUserInfoCard{
	String dateLastPlayed;
	String supplementalDisplayName;
	String iconPath;
	int membershipType;
	String membershipId;
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