class UserInfoCard{
	String supplementalDisplayName;
	String iconPath;
	int membershipType;
	String membershipId;
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