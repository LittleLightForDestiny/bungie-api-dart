import 'destiny_progression.dart';
import 'clan_banner.dart';

/** The same as GroupV2ClanInfo, but includes any investment data. */
class GroupV2ClanInfoAndInvestment{
	
	/**  */
	Map<String, DestinyProgression> d2ClanProgressions;
	
	/**  */
	String clanCallsign;
	
	/**  */
	ClanBanner clanBannerData;
	GroupV2ClanInfoAndInvestment(
		this.d2ClanProgressions,
		this.clanCallsign,
		this.clanBannerData,
	);

	static GroupV2ClanInfoAndInvestment fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new GroupV2ClanInfoAndInvestment(
				data['d2ClanProgressions'] != null ? Map<String, DestinyProgression>.from(data['d2ClanProgressions'].map((k, v)=>MapEntry(k, DestinyProgression.fromMap(v)))) : null,
				data['clanCallsign'],
				data['clanBannerData'] != null ? ClanBanner.fromMap(data['clanBannerData']) : null,
		);
	}

	static List<GroupV2ClanInfoAndInvestment> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<GroupV2ClanInfoAndInvestment> list = new List();
    data.forEach((item) {
      list.add(GroupV2ClanInfoAndInvestment.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['d2ClanProgressions'] = this.d2ClanProgressions != null? this.d2ClanProgressions.map((i, v)=>MapEntry(i, v.toMap())) : null;
			data['clanCallsign'] = this.clanCallsign;
			data['clanBannerData'] = this.clanBannerData != null? this.clanBannerData.toMap() : null;
		return data;
	}
}