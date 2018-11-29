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

	static UserInfoCard fromJson(Map<String, dynamic> data){
		return new UserInfoCard(
				data['supplementalDisplayName'],
				data['iconPath'],
				data['membershipType'],
				data['membershipId'],
				data['displayName'],
		);
	}

	static List<UserInfoCard> fromList(List<dynamic> data){
		List<UserInfoCard> list = new List();
    data.forEach((item) {
      list.add(UserInfoCard.fromJson(item));
    });
    return list;
	}
}