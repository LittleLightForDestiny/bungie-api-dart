
/* Very basic info about a user as returned by the Account server. */
class UserMembership{
	
	/* Type of the membership. */
	int membershipType;
	
	/* Membership ID as they user is known in the Accounts service */
	String membershipId;
	
	/* Display Name the player has chosen for themselves. The display name is optional when the data type is used as input to a platform API. */
	String displayName;
	UserMembership(
		this.membershipType,
		this.membershipId,
		this.displayName,
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