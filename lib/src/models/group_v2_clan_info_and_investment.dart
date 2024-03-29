import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_progression.dart';
import 'clan_banner.dart';

part 'group_v2_clan_info_and_investment.g.dart';

/// The same as GroupV2ClanInfo, but includes any investment data.
@JsonSerializable()
class GroupV2ClanInfoAndInvestment{	
	GroupV2ClanInfoAndInvestment();

	
	@JsonKey(name:'d2ClanProgressions')
	Map<String, DestinyProgression>? d2ClanProgressions;
	
	@JsonKey(name:'clanCallsign')
	String? clanCallsign;
	
	@JsonKey(name:'clanBannerData')
	ClanBanner? clanBannerData;

	factory GroupV2ClanInfoAndInvestment.fromJson(Map<String, dynamic> json) {
		return _$GroupV2ClanInfoAndInvestmentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$GroupV2ClanInfoAndInvestmentToJson(this);

	static Future<GroupV2ClanInfoAndInvestment> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, GroupV2ClanInfoAndInvestment>((json)=>GroupV2ClanInfoAndInvestment.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}