import 'clan_banner.dart';
class GroupV2ClanInfo{
	String clanCallsign;
	ClanBanner clanBannerData;
	GroupV2ClanInfo(
		String this.clanCallsign,
		ClanBanner this.clanBannerData,
	);

	static GroupV2ClanInfo fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new GroupV2ClanInfo(
				data['clanCallsign'],
				ClanBanner.fromMap(data['clanBannerData']),
		);
	}

	static List<GroupV2ClanInfo> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<GroupV2ClanInfo> list = new List();
    data.forEach((item) {
      list.add(GroupV2ClanInfo.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['clanCallsign'] = clanCallsign;
			data['clanBannerData'] = clanBannerData.toMap();
	}
}