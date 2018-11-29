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
		return new UserMembership(
				data['membershipType'],
				data['membershipId'],
				data['displayName'],
		);
	}

	static List<UserMembership> fromList(List<dynamic> data){
		List<UserMembership> list = new List();
    data.forEach((item) {
      list.add(UserMembership.fromJson(item));
    });
    return list;
	}
}