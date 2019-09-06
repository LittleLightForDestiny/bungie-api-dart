import 'clan_banner.dart';

import 'package:json_annotation/json_annotation.dart';
part 'group_v2_clan_info.g.dart';

/// This contract contains clan-specific group information. It does not include any investment data.
@JsonSerializable()
class GroupV2ClanInfo {

	@JsonKey(name:'clanCallsign')
	String clanCallsign;

	@JsonKey(name:'clanBannerData')
	ClanBanner clanBannerData;
	GroupV2ClanInfo();

	factory GroupV2ClanInfo.fromJson(Map<String, dynamic> json) => _$GroupV2ClanInfoFromJson(json);
	
	Map<String, dynamic> toJson() => _$GroupV2ClanInfoToJson(this);
}
