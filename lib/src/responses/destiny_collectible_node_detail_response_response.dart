import '../models/destiny_collectible_node_detail_response.dart';
import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

part 'destiny_collectible_node_detail_response_response.g.dart';

/// Returns the detailed information about a Collectible Presentation Node and any Collectibles that are direct descendants.
@JsonSerializable()
class DestinyCollectibleNodeDetailResponseResponse extends BungieNetResponse<DestinyCollectibleNodeDetailResponse> {
	DestinyCollectibleNodeDetailResponseResponse({
		DestinyCollectibleNodeDetailResponse? response,
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

	factory DestinyCollectibleNodeDetailResponseResponse.fromJson(Map<String, dynamic> json) => _$DestinyCollectibleNodeDetailResponseResponseFromJson(json);

	Map<String, dynamic> toJson() => _$DestinyCollectibleNodeDetailResponseResponseToJson(this);

	static Future<DestinyCollectibleNodeDetailResponseResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyCollectibleNodeDetailResponseResponse>((json)=>DestinyCollectibleNodeDetailResponseResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}