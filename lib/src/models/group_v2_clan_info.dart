import 'package:json_annotation/json_annotation.dart';

import 'clan_banner.dart';

part 'group_v2_clan_info.g.dart';

/// This contract contains clan-specific group information. It does not include any investment data.
@JsonSerializable()
class GroupV2ClanInfo{
	
	GroupV2ClanInfo();

	factory GroupV2ClanInfo.fromJson(Map<String, dynamic> json) {
		return _$GroupV2ClanInfoFromJson(json);
	}

	@JsonKey(name:'clanCallsign')
	String? clanCallsign;
	@JsonKey(name:'clanBannerData')
	ClanBanner? clanBannerData;

	
	
	Map<String, dynamic> toJson() => _$GroupV2ClanInfoToJson(this);
}