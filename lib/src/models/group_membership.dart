import 'package:json_annotation/json_annotation.dart';

import 'group_member.dart';
import 'group_v2.dart';

part 'group_membership.g.dart';

@JsonSerializable()
class GroupMembership{
	
	GroupMembership();

	factory GroupMembership.fromJson(Map<String, dynamic> json) {
		try{
			return _$GroupMembershipFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'member')
	GroupMember member;
	@JsonKey(name:'group')
	GroupV2 group;

	
	
	Map<String, dynamic> toJson() => _$GroupMembershipToJson(this);
}