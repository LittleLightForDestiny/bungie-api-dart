import 'group_v2.dart';
class GroupMemberLeaveResult{
	GroupV2 group;
	bool groupDeleted;
	GroupMemberLeaveResult(
		GroupV2 this.group,
		bool this.groupDeleted,
	);

	static GroupMemberLeaveResult fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new GroupMemberLeaveResult(
				GroupV2.fromJson(data['group']),
				data['groupDeleted'],
		);
	}

	static List<GroupMemberLeaveResult> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<GroupMemberLeaveResult> list = new List();
    data.forEach((item) {
      list.add(GroupMemberLeaveResult.fromJson(item));
    });
    return list;
	}
}