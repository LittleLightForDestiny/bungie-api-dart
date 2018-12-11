class UserMembership{
	int membershipType;
	int membershipId;
	String displayName;
	UserMembership(
		int this.membershipType,
		int this.membershipId,
		String this.displayName,
	);

	static UserMembership fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new UserMembership(
				data['membershipType'],
				data['membershipId'],
				data['displayName'],
		);
	}

	static List<UserMembership> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<UserMembership> list = new List();
    data.forEach((item) {
      list.add(UserMembership.fromJson(item));
    });
    return list;
	}
}