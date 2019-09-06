import 'group_v2.dart';

import 'package:json_annotation/json_annotation.dart';
part 'group_membership_base.g.dart';

@JsonSerializable()
class GroupMembershipBase {

	@JsonKey(name:'group')
	GroupV2 group;
	GroupMembershipBase();

	factory GroupMembershipBase.fromJson(Map<String, dynamic> json) => _$GroupMembershipBaseFromJson(json);
	
	Map<String, dynamic> toJson() => _$GroupMembershipBaseToJson(this);
}
