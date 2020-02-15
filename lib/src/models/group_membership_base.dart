import 'package:json_annotation/json_annotation.dart';

import 'group_v2.dart';

part 'group_membership_base.g.dart';

@JsonSerializable()
class GroupMembershipBase{
	
	GroupMembershipBase();

	factory GroupMembershipBase.fromJson(Map<String, dynamic> json) {
		try{
			return _$GroupMembershipBaseFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'group')
	GroupV2 group;

	
	
	Map<String, dynamic> toJson() => _$GroupMembershipBaseToJson(this);
}