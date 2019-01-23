import 'group_potential_member.dart';
import 'group_v2.dart';

/**  */
class GroupPotentialMembership{
	
	/**  */
	GroupPotentialMember member;
	
	/**  */
	GroupV2 group;
	GroupPotentialMembership(
		this.member,
		this.group,
	);

	static GroupPotentialMembership fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new GroupPotentialMembership(
				data['member'] != null ? GroupPotentialMember.fromMap(data['member']) : null,
				data['group'] != null ? GroupV2.fromMap(data['group']) : null,
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
			data['member'] = this.member != null? this.member.toMap() : null;
			data['group'] = this.group != null? this.group.toMap() : null;
		return data;
	}
}