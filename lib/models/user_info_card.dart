class UserInfoCard{
	String supplementalDisplayName;
	String iconPath;
	int membershipType;
	int membershipId;
	String displayName;
	UserInfoCard(
		String this.supplementalDisplayName,
		String this.iconPath,
		int this.membershipType,
		int this.membershipId,
		String this.displayName,
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
			data['supplementalDisplayName'] = supplementalDisplayName;
			data['iconPath'] = iconPath;
			data['membershipType'] = membershipType;
			data['membershipId'] = membershipId;
			data['displayName'] = displayName;
	}
}