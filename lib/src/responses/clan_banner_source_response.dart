import '../models/clan_banner_source.dart';
import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

part 'clan_banner_source_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class ClanBannerSourceResponse extends BungieNetResponse<ClanBannerSource> {
	ClanBannerSourceResponse({
		ClanBannerSource? response,
		PlatformErrorCodes? errorCode,
		int? throttleSeconds,
		String? errorStatus,
		String? message,
		Map<String, String>? messageData,
		String? detailedErrorTrace,
	}):super(
		response:response,
		errorCode:errorCode,
		throttleSeconds:throttleSeconds,
		errorStatus:errorStatus,
		message:message,
		messageData:messageData,
		detailedErrorTrace:detailedErrorTrace,
	);

	factory ClanBannerSourceResponse.fromJson(Map<String, dynamic> json) => _$ClanBannerSourceResponseFromJson(json);

	Map<String, dynamic> toJson() => _$ClanBannerSourceResponseToJson(this);

	static Future<ClanBannerSourceResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, ClanBannerSourceResponse>((json)=>ClanBannerSourceResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}