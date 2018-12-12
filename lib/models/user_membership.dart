class UserMembership{
	int membershipType;
	String membershipId;
	String displayName;
	UserMembership(
		int this.membershipType,
		String this.membershipId,
		String this.displayName,
	);

	static UserMembership fromMap(Map<String, dynamic> data){
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
      list.add(UserMembership.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['membershipType'] = this.membershipType;
			data['membershipId'] = this.membershipId;
			data['displayName'] = this.displayName;
		return data;
	}
}