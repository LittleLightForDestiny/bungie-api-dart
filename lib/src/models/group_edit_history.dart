import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'user_info_card.dart';

part 'group_edit_history.g.dart';

@JsonSerializable()
class GroupEditHistory{	
	GroupEditHistory();

	
	@JsonKey(name:'groupId')
	String? groupId;
	
	@JsonKey(name:'name')
	String? name;
	
	@JsonKey(name:'nameEditors')
	String? nameEditors;
	
	@JsonKey(name:'about')
	String? about;
	
	@JsonKey(name:'aboutEditors')
	String? aboutEditors;
	
	@JsonKey(name:'motto')
	String? motto;
	
	@JsonKey(name:'mottoEditors')
	String? mottoEditors;
	
	@JsonKey(name:'clanCallsign')
	String? clanCallsign;
	
	@JsonKey(name:'clanCallsignEditors')
	String? clanCallsignEditors;
	
	@JsonKey(name:'editDate')
	String? editDate;
	
	@JsonKey(name:'groupEditors')
	List<UserInfoCard>? groupEditors;

	factory GroupEditHistory.fromJson(Map<String, dynamic> json) {
		return _$GroupEditHistoryFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$GroupEditHistoryToJson(this);

	static Future<GroupEditHistory> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, GroupEditHistory>((json)=>GroupEditHistory.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}