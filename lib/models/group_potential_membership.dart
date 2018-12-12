import 'group_potential_member.dart';
import 'group_v2.dart';
class GroupPotentialMembership{
	GroupPotentialMember member;
	GroupV2 group;
	GroupPotentialMembership(
		GroupPotentialMember this.member,
		GroupV2 this.group,
	);

	static GroupPotentialMembership fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new GroupPotentialMembership(
				GroupPotentialMember.fromMap(data['member']),
				GroupV2.fromMap(data['group']),
		);
	}

	static List<GroupPotentialMembership> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<GroupPotentialMembership> list = new List();
    data.forEach((item) {
      list.add(GroupPotentialMembership.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['member'] = member.toMap();
			data['group'] = group.toMap();
	}
}