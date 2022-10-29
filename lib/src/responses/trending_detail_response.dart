import '../models/trending_detail.dart';
import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

part 'trending_detail_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class TrendingDetailResponse extends BungieNetResponse<TrendingDetail> {
	TrendingDetailResponse({
		TrendingDetail? response,
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

	factory TrendingDetailResponse.fromJson(Map<String, dynamic> json) => _$TrendingDetailResponseFromJson(json);

	Map<String, dynamic> toJson() => _$TrendingDetailResponseToJson(this);

	static Future<TrendingDetailResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, TrendingDetailResponse>((json)=>TrendingDetailResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}