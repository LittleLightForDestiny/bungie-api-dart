import 'package:json_annotation/json_annotation.dart';

import '../enums/group_type.dart';
import '../enums/chat_security_setting.dart';
import '../enums/group_homepage.dart';
import '../enums/membership_option.dart';
import '../enums/group_post_publicity.dart';
import 'group_features.dart';
import 'group_v2_clan_info_and_investment.dart';

part 'group_v2.g.dart';

@JsonSerializable()
class GroupV2{	
	GroupV2();

	factory GroupV2.fromJson(Map<String, dynamic> json) {
		return _$GroupV2FromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$GroupV2ToJson(this);
	
	@JsonKey(name:'groupId')
	String? groupId;
	
	@JsonKey(name:'name')
	String? name;
	
	@JsonKey(name:'groupType',fromJson:decodeGroupType,toJson:encodeGroupType)
	GroupType? groupType;
	
	@JsonKey(name:'membershipIdCreated')
	String? membershipIdCreated;
	
	@JsonKey(name:'creationDate')
	String? creationDate;
	
	@JsonKey(name:'modificationDate')
	String? modificationDate;
	
	@JsonKey(name:'about')
	String? about;
	
	@JsonKey(name:'tags')
	List<String>? tags;
	
	@JsonKey(name:'memberCount')
	int? memberCount;
	
	@JsonKey(name:'isPublic')
	bool? isPublic;
	
	@JsonKey(name:'isPublicTopicAdminOnly')
	bool? isPublicTopicAdminOnly;
	
	@JsonKey(name:'motto')
	String? motto;
	
	@JsonKey(name:'allowChat')
	bool? allowChat;
	
	@JsonKey(name:'isDefaultPostPublic')
	bool? isDefaultPostPublic;
	
	@JsonKey(name:'chatSecurity',fromJson:decodeChatSecuritySetting,toJson:encodeChatSecuritySetting)
	ChatSecuritySetting? chatSecurity;
	
	@JsonKey(name:'locale')
	String? locale;
	
	@JsonKey(name:'avatarImageIndex')
	int? avatarImageIndex;
	
	@JsonKey(name:'homepage',fromJson:decodeGroupHomepage,toJson:encodeGroupHomepage)
	GroupHomepage? homepage;
	
	@JsonKey(name:'membershipOption',fromJson:decodeMembershipOption,toJson:encodeMembershipOption)
	MembershipOption? membershipOption;
	
	@JsonKey(name:'defaultPublicity',fromJson:decodeGroupPostPublicity,toJson:encodeGroupPostPublicity)
	GroupPostPublicity? defaultPublicity;
	
	@JsonKey(name:'theme')
	String? theme;
	
	@JsonKey(name:'bannerPath')
	String? bannerPath;
	
	@JsonKey(name:'avatarPath')
	String? avatarPath;
	
	@JsonKey(name:'conversationId')
	String? conversationId;
	
	@JsonKey(name:'enableInvitationMessagingForAdmins')
	bool? enableInvitationMessagingForAdmins;
	
	@JsonKey(name:'banExpireDate')
	String? banExpireDate;
	
	@JsonKey(name:'features')
	GroupFeatures? features;
	
	/// The same as GroupV2ClanInfo, but includes any investment data.
	@JsonKey(name:'clanInfo')
	GroupV2ClanInfoAndInvestment? clanInfo;
}