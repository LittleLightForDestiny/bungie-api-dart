import 'user_membership.dart';
class GroupApplicationListRequest{
	List<UserMembership> memberships;
	String message;
	GroupApplicationListRequest(
		List<UserMembership> this.memberships,
		String this.message,
	);

	static GroupApplicationListRequest fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new GroupApplicationListRequest(
				UserMembership.fromList(data['memberships']),
				data['message'],
		);
	}

	static List<GroupApplicationListRequest> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<GroupApplicationListRequest> list = new List();
    data.forEach((item) {
      list.add(GroupApplicationListRequest.fromJson(item));
    });
    return list;
	}
}