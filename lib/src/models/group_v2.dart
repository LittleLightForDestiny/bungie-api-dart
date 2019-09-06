import 'group_features.dart';
import 'group_v2_clan_info_and_investment.dart';

import 'package:json_annotation/json_annotation.dart';
part 'group_v2.g.dart';

@JsonSerializable()
class GroupV2 {

	@JsonKey(name:'groupId')
	String groupId;

	@JsonKey(name:'name')
	String name;

	@JsonKey(name:'groupType')
	int groupType;

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

	@JsonKey(name:'chatSecurity')
	int chatSecurity;

	@JsonKey(name:'locale')
	String locale;

	@JsonKey(name:'avatarImageIndex')
	int avatarImageIndex;

	@JsonKey(name:'homepage')
	int homepage;

	@JsonKey(name:'membershipOption')
	int membershipOption;

	@JsonKey(name:'defaultPublicity')
	int defaultPublicity;

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
	GroupV2();

	factory GroupV2.fromJson(Map<String, dynamic> json) => _$GroupV2FromJson(json);
	
	Map<String, dynamic> toJson() => _$GroupV2ToJson(this);
}
