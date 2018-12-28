import 'clan_banner.dart';

/* This contract contains clan-specific group information. It does not include any investment data. */
class GroupV2ClanInfo{
	
	/*  */
	String clanCallsign;
	
	/*  */
	ClanBanner clanBannerData;
	GroupV2ClanInfo(
		this.clanCallsign,
		this.clanBannerData,
	);

	static GroupV2ClanInfo fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new GroupV2ClanInfo(
				data['clanCallsign'],
				data['clanBannerData'] != null ? ClanBanner.fromMap(data['clanBannerData']) : null,
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
			data['clanCallsign'] = this.clanCallsign;
			data['clanBannerData'] = this.clanBannerData.toMap();
		return data;
	}
}