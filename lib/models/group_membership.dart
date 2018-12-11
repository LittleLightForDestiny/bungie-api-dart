import 'group_member.dart';
import 'group_v2.dart';
class GroupMembership{
	GroupMember member;
	GroupV2 group;
	GroupMembership(
		GroupMember this.member,
		GroupV2 this.group,
	);

	static GroupMembership fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new GroupMembership(
				GroupMember.fromJson(data['member']),
				GroupV2.fromJson(data['group']),
		);
	}

	static List<GroupMembership> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<GroupMembership> list = new List();
    data.forEach((item) {
      list.add(GroupMembership.fromJson(item));
    });
    return list;
	}
}