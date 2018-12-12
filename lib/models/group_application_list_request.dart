import 'user_membership.dart';
class GroupApplicationListRequest{
	List<UserMembership> memberships;
	String message;
	GroupApplicationListRequest(
		List<UserMembership> this.memberships,
		String this.message,
	);

	static GroupApplicationListRequest fromMap(Map<String, dynamic> data){
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
      list.add(GroupApplicationListRequest.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['memberships'] = this.memberships.map((item)=>item.toMap());
			data['message'] = this.message;
		return data;
	}
}