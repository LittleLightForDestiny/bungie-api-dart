import 'ignore_response.dart';

/**  */
class UserToUserContext{
	
	/**  */
	bool isFollowing;
	
	/**  */
	IgnoreResponse ignoreStatus;
	
	/**  */
	String globalIgnoreEndDate;
	UserToUserContext(
		this.isFollowing,
		this.ignoreStatus,
		this.globalIgnoreEndDate,
	);

	static UserToUserContext fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new UserToUserContext(
				data['isFollowing'],
				data['ignoreStatus'] != null ? IgnoreResponse.fromMap(data['ignoreStatus']) : null,
				data['globalIgnoreEndDate'],
		);
	}

	static List<UserToUserContext> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<UserToUserContext> list = new List();
    data.forEach((item) {
      list.add(UserToUserContext.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['isFollowing'] = this.isFollowing;
			data['ignoreStatus'] = this.ignoreStatus != null? this.ignoreStatus.toMap() : null;
			data['globalIgnoreEndDate'] = this.globalIgnoreEndDate;
		return data;
	}
}