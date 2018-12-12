import 'ignore_response.dart';
class UserToUserContext{
	bool isFollowing;
	IgnoreResponse ignoreStatus;
	String globalIgnoreEndDate;
	UserToUserContext(
		bool this.isFollowing,
		IgnoreResponse this.ignoreStatus,
		String this.globalIgnoreEndDate,
	);

	static UserToUserContext fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new UserToUserContext(
				data['isFollowing'],
				IgnoreResponse.fromMap(data['ignoreStatus']),
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
			data['ignoreStatus'] = this.ignoreStatus.toMap();
			data['globalIgnoreEndDate'] = this.globalIgnoreEndDate;
		return data;
	}
}