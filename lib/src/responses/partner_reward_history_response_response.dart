import '../models/partner_reward_history_response.dart';
import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

part 'partner_reward_history_response_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class PartnerRewardHistoryResponseResponse extends BungieNetResponse<PartnerRewardHistoryResponse> {
	PartnerRewardHistoryResponseResponse({
		PartnerRewardHistoryResponse? response,
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

	factory PartnerRewardHistoryResponseResponse.fromJson(Map<String, dynamic> json) => _$PartnerRewardHistoryResponseResponseFromJson(json);

	Map<String, dynamic> toJson() => _$PartnerRewardHistoryResponseResponseToJson(this);

	static Future<PartnerRewardHistoryResponseResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, PartnerRewardHistoryResponseResponse>((json)=>PartnerRewardHistoryResponseResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}