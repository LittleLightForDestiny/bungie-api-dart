import 'package:json_annotation/json_annotation.dart';

import 'destiny_progression.dart';
import 'clan_banner.dart';

part 'group_v2_clan_info_and_investment.g.dart';

/// The same as GroupV2ClanInfo, but includes any investment data.
@JsonSerializable()
class GroupV2ClanInfoAndInvestment{
	
	GroupV2ClanInfoAndInvestment();

	factory GroupV2ClanInfoAndInvestment.fromJson(Map<String, dynamic> json) {
		try{
			return _$GroupV2ClanInfoAndInvestmentFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'d2ClanProgressions')
	Map<String, DestinyProgression> d2ClanProgressions;
	@JsonKey(name:'clanCallsign')
	String clanCallsign;
	@JsonKey(name:'clanBannerData')
	ClanBanner clanBannerData;

	
	
	Map<String, dynamic> toJson() => _$GroupV2ClanInfoAndInvestmentToJson(this);
}