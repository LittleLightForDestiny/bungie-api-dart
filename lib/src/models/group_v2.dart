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
		try{
			return _$GroupV2FromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'groupId')
	String groupId;
	@JsonKey(name:'name')
	String name;
	@JsonKey(name:'groupType',unknownEnumValue:GroupType.ProtectedInvalidEnumValue)
	GroupType groupType;
	@JsonKey(name:'membershipIdCreated')
	String membershipIdCreated;
	@JsonKey(name:'creationDate')
	String creationDate;
	@JsonKey(name:'modificationDate')
	String modificationDate;
	@JsonKey(name:'about')
	String about;
	@JsonKey(name:'tags')
	List<String> tags;
	@JsonKey(name:'memberCount')
	int memberCount;
	@JsonKey(name:'isPublic')
	bool isPublic;
	@JsonKey(name:'isPublicTopicAdminOnly')
	bool isPublicTopicAdminOnly;
	@JsonKey(name:'motto')
	String motto;
	@JsonKey(name:'allowChat')
	bool allowChat;
	@JsonKey(name:'isDefaultPostPublic')
	bool isDefaultPostPublic;
	@JsonKey(name:'chatSecurity',unknownEnumValue:ChatSecuritySetting.ProtectedInvalidEnumValue)
	ChatSecuritySetting chatSecurity;
	@JsonKey(name:'locale')
	String locale;
	@JsonKey(name:'avatarImageIndex')
	int avatarImageIndex;
	@JsonKey(name:'homepage',unknownEnumValue:GroupHomepage.ProtectedInvalidEnumValue)
	GroupHomepage homepage;
	@JsonKey(name:'membershipOption',unknownEnumValue:MembershipOption.ProtectedInvalidEnumValue)
	MembershipOption membershipOption;
	@JsonKey(name:'defaultPublicity',unknownEnumValue:GroupPostPublicity.ProtectedInvalidEnumValue)
	GroupPostPublicity defaultPublicity;
	@JsonKey(name:'theme')
	String theme;
	@JsonKey(name:'bannerPath')
	String bannerPath;
	@JsonKey(name:'avatarPath')
	String avatarPath;
	@JsonKey(name:'conversationId')
	String conversationId;
	@JsonKey(name:'enableInvitationMessagingForAdmins')
	bool enableInvitationMessagingForAdmins;
	@JsonKey(name:'banExpireDate')
	String banExpireDate;
	@JsonKey(name:'features')
	GroupFeatures features;
	/// The same as GroupV2ClanInfo, but includes any investment data.
	@JsonKey(name:'clanInfo')
	GroupV2ClanInfoAndInvestment clanInfo;

	
	
	Map<String, dynamic> toJson() => _$GroupV2ToJson(this);
}