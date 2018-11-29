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

	static UserToUserContext fromJson(Map<String, dynamic> data){
		return new UserToUserContext(
				data['isFollowing'],
				IgnoreResponse.fromJson(data['ignoreStatus']),
				data['globalIgnoreEndDate'],
		);
	}

	static List<UserToUserContext> fromList(List<dynamic> data){
		List<UserToUserContext> list = new List();
    data.forEach((item) {
      list.add(UserToUserContext.fromJson(item));
    });
    return list;
	}
}