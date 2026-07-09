import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import '../enums/membership_option.dart';
import '../enums/chat_security_setting.dart';
import '../enums/group_homepage.dart';
import '../enums/group_post_publicity.dart';

part 'group_edit_action.g.dart';

@JsonSerializable()
class GroupEditAction{	
	GroupEditAction();

	
	@JsonKey(name:'name')
	String? name;
	
	@JsonKey(name:'about')
	String? about;
	
	@JsonKey(name:'motto')
	String? motto;
	
	@JsonKey(name:'theme')
	String? theme;
	
	@JsonKey(name:'avatarImageIndex')
	int? avatarImageIndex;
	
	@JsonKey(name:'tags')
	String? tags;
	
	@JsonKey(name:'isPublic')
	bool? isPublic;
	
	@JsonKey(name:'membershipOption',fromJson:decodeMembershipOption,toJson:encodeMembershipOption)
	MembershipOption? membershipOption;
	
	@JsonKey(name:'isPublicTopicAdminOnly')
	bool? isPublicTopicAdminOnly;
	
	@JsonKey(name:'allowChat')
	bool? allowChat;
	
	@JsonKey(name:'chatSecurity',fromJson:decodeChatSecuritySetting,toJson:encodeChatSecuritySetting)
	ChatSecuritySetting? chatSecurity;
	
	@JsonKey(name:'callsign')
	String? callsign;
	
	@JsonKey(name:'locale')
	String? locale;
	
	@JsonKey(name:'homepage',fromJson:decodeGroupHomepage,toJson:encodeGroupHomepage)
	GroupHomepage? homepage;
	
	@JsonKey(name:'enableInvitationMessagingForAdmins')
	bool? enableInvitationMessagingForAdmins;
	
	@JsonKey(name:'defaultPublicity',fromJson:decodeGroupPostPublicity,toJson:encodeGroupPostPublicity)
	GroupPostPublicity? defaultPublicity;

	factory GroupEditAction.fromJson(Map<String, dynamic> json) {
		return _$GroupEditActionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$GroupEditActionToJson(this);

	static Future<GroupEditAction> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, GroupEditAction>((json)=>GroupEditAction.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}