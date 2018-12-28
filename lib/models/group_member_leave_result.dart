import 'group_v2.dart';

/*  */
class GroupMemberLeaveResult{
	
	/*  */
	GroupV2 group;
	
	/*  */
	bool groupDeleted;
	GroupMemberLeaveResult(
		this.group,
		this.groupDeleted,
	);

	static GroupMemberLeaveResult fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new GroupMemberLeaveResult(
				data['group'] != null ? GroupV2.fromMap(data['group']) : null,
				data['groupDeleted'],
		);
	}

	static List<GroupMemberLeaveResult> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<GroupMemberLeaveResult> list = new List();
    data.forEach((item) {
      list.add(GroupMemberLeaveResult.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['group'] = this.group.toMap();
			data['groupDeleted'] = this.groupDeleted;
		return data;
	}
}