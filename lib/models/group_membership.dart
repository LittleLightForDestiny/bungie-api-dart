import 'group_member.dart';
import 'group_v2.dart';

/**  */
class GroupMembership{
	
	/**  */
	GroupMember member;
	
	/**  */
	GroupV2 group;
	GroupMembership(
		this.member,
		this.group,
	);

	static GroupMembership fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new GroupMembership(
				data['member'] != null ? GroupMember.fromMap(data['member']) : null,
				data['group'] != null ? GroupV2.fromMap(data['group']) : null,
		);
	}

	static List<GroupMembership> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<GroupMembership> list = new List();
    data.forEach((item) {
      list.add(GroupMembership.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['member'] = this.member.toMap();
			data['group'] = this.group.toMap();
		return data;
	}
}