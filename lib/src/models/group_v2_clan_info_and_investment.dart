import 'destiny_progression.dart';
import 'clan_banner.dart';

import 'package:json_annotation/json_annotation.dart';
part 'group_v2_clan_info_and_investment.g.dart';

/// The same as GroupV2ClanInfo, but includes any investment data.
@JsonSerializable()
class GroupV2ClanInfoAndInvestment {

	@JsonKey(name:'d2ClanProgressions')
	Map<String, DestinyProgression> d2ClanProgressions;

	@JsonKey(name:'clanCallsign')
	String clanCallsign;

	@JsonKey(name:'clanBannerData')
	ClanBanner clanBannerData;
	GroupV2ClanInfoAndInvestment();

	factory GroupV2ClanInfoAndInvestment.fromJson(Map<String, dynamic> json) => _$GroupV2ClanInfoAndInvestmentFromJson(json);
	
	Map<String, dynamic> toJson() => _$GroupV2ClanInfoAndInvestmentToJson(this);
}
