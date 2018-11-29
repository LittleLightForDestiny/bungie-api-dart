import 'clan_banner.dart';
class GroupV2ClanInfo{
	String clanCallsign;
	ClanBanner clanBannerData;
	GroupV2ClanInfo(
		String this.clanCallsign,
		ClanBanner this.clanBannerData,
	);

	static GroupV2ClanInfo fromJson(Map<String, dynamic> data){
		return new GroupV2ClanInfo(
				data['clanCallsign'],
				ClanBanner.fromJson(data['clanBannerData']),
		);
	}

	static List<GroupV2ClanInfo> fromList(List<dynamic> data){
		List<GroupV2ClanInfo> list = new List();
    data.forEach((item) {
      list.add(GroupV2ClanInfo.fromJson(item));
    });
    return list;
	}
}