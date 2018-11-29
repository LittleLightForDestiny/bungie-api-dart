import 'group_potential_member.dart';
import 'group_v2.dart';
class GroupPotentialMembership{
	GroupPotentialMember member;
	GroupV2 group;
	GroupPotentialMembership(
		GroupPotentialMember this.member,
		GroupV2 this.group,
	);

	static GroupPotentialMembership fromJson(Map<String, dynamic> data){
		return new GroupPotentialMembership(
				GroupPotentialMember.fromJson(data['member']),
				GroupV2.fromJson(data['group']),
		);
	}

	static List<GroupPotentialMembership> fromList(List<dynamic> data){
		List<GroupPotentialMembership> list = new List();
    data.forEach((item) {
      list.add(GroupPotentialMembership.fromJson(item));
    });
    return list;
	}
}