import 'group_features.dart';
import 'group_v2_clan_info_and_investment.dart';
class GroupV2{
	String groupId;
	String name;
	int groupType;
	String membershipIdCreated;
	String creationDate;
	String modificationDate;
	String about;
	List<String> tags;
	int memberCount;
	bool isPublic;
	bool isPublicTopicAdminOnly;
	String motto;
	bool allowChat;
	bool isDefaultPostPublic;
	int chatSecurity;
	String locale;
	int avatarImageIndex;
	int homepage;
	int membershipOption;
	int defaultPublicity;
	String theme;
	String bannerPath;
	String avatarPath;
	String conversationId;
	bool enableInvitationMessagingForAdmins;
	String banExpireDate;
	GroupFeatures features;
	GroupV2ClanInfoAndInvestment clanInfo;
	GroupV2(
		String this.groupId,
		String this.name,
		int this.groupType,
		String this.membershipIdCreated,
		String this.creationDate,
		String this.modificationDate,
		String this.about,
		List<String> this.tags,
		int this.memberCount,
		bool this.isPublic,
		bool this.isPublicTopicAdminOnly,
		String this.motto,
		bool this.allowChat,
		bool this.isDefaultPostPublic,
		int this.chatSecurity,
		String this.locale,
		int this.avatarImageIndex,
		int this.homepage,
		int this.membershipOption,
		int this.defaultPublicity,
		String this.theme,
		String this.bannerPath,
		String this.avatarPath,
		String this.conversationId,
		bool this.enableInvitationMessagingForAdmins,
		String this.banExpireDate,
		GroupFeatures this.features,
		GroupV2ClanInfoAndInvestment this.clanInfo,
	);

	static GroupV2 fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new GroupV2(
				data['groupId'],
				data['name'],
				data['groupType'],
				data['membershipIdCreated'],
				data['creationDate'],
				data['modificationDate'],
				data['about'],
				data['tags'],
				data['memberCount'],
				data['isPublic'],
				data['isPublicTopicAdminOnly'],
				data['motto'],
				data['allowChat'],
				data['isDefaultPostPublic'],
				data['chatSecurity'],
				data['locale'],
				data['avatarImageIndex'],
				data['homepage'],
				data['membershipOption'],
				data['defaultPublicity'],
				data['theme'],
				data['bannerPath'],
				data['avatarPath'],
				data['conversationId'],
				data['enableInvitationMessagingForAdmins'],
				data['banExpireDate'],
				GroupFeatures.fromMap(data['features']),
				GroupV2ClanInfoAndInvestment.fromMap(data['clanInfo']),
		);
	}

	static List<GroupV2> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<GroupV2> list = new List();
    data.forEach((item) {
      list.add(GroupV2.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['groupId'] = this.groupId;
			data['name'] = this.name;
			data['groupType'] = this.groupType;
			data['membershipIdCreated'] = this.membershipIdCreated;
			data['creationDate'] = this.creationDate;
			data['modificationDate'] = this.modificationDate;
			data['about'] = this.about;
			data['tags'] = this.tags;
			data['memberCount'] = this.memberCount;
			data['isPublic'] = this.isPublic;
			data['isPublicTopicAdminOnly'] = this.isPublicTopicAdminOnly;
			data['motto'] = this.motto;
			data['allowChat'] = this.allowChat;
			data['isDefaultPostPublic'] = this.isDefaultPostPublic;
			data['chatSecurity'] = this.chatSecurity;
			data['locale'] = this.locale;
			data['avatarImageIndex'] = this.avatarImageIndex;
			data['homepage'] = this.homepage;
			data['membershipOption'] = this.membershipOption;
			data['defaultPublicity'] = this.defaultPublicity;
			data['theme'] = this.theme;
			data['bannerPath'] = this.bannerPath;
			data['avatarPath'] = this.avatarPath;
			data['conversationId'] = this.conversationId;
			data['enableInvitationMessagingForAdmins'] = this.enableInvitationMessagingForAdmins;
			data['banExpireDate'] = this.banExpireDate;
			data['features'] = this.features.toMap();
			data['clanInfo'] = this.clanInfo.toMap();
		return data;
	}
}