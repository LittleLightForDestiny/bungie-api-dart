import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'clan_banner.dart';

part 'group_v2_clan_info.g.dart';

/// This contract contains clan-specific group information. It does not include any investment data.
@JsonSerializable()
class GroupV2ClanInfo{	
	GroupV2ClanInfo();

	
	@JsonKey(name:'clanCallsign')
	String? clanCallsign;
	
	@JsonKey(name:'clanBannerData')
	ClanBanner? clanBannerData;

	factory GroupV2ClanInfo.fromJson(Map<String, dynamic> json) {
		return _$GroupV2ClanInfoFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$GroupV2ClanInfoToJson(this);

	static Future<GroupV2ClanInfo> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, GroupV2ClanInfo>((json)=>GroupV2ClanInfo.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}