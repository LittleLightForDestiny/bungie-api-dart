import 'destiny_progression.dart';
import 'clan_banner.dart';
class GroupV2ClanInfoAndInvestment{
	Map<DestinyProgression, dynamic> d2ClanProgressions;
	String clanCallsign;
	ClanBanner clanBannerData;
	GroupV2ClanInfoAndInvestment(
		Map<DestinyProgression, dynamic> this.d2ClanProgressions,
		String this.clanCallsign,
		ClanBanner this.clanBannerData,
	);

	static GroupV2ClanInfoAndInvestment fromJson(Map<String, dynamic> data){
		return new GroupV2ClanInfoAndInvestment(
				data['d2ClanProgressions'],
				data['clanCallsign'],
				ClanBanner.fromJson(data['clanBannerData']),
		);
	}

	static List<GroupV2ClanInfoAndInvestment> fromList(List<dynamic> data){
		List<GroupV2ClanInfoAndInvestment> list = new List();
    data.forEach((item) {
      list.add(GroupV2ClanInfoAndInvestment.fromJson(item));
    });
    return list;
	}
}