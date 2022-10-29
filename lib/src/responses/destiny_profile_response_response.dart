import '../models/destiny_profile_response.dart';
import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

part 'destiny_profile_response_response.g.dart';

/// The response for GetDestinyProfile, with components for character and item-level data.
@JsonSerializable()
class DestinyProfileResponseResponse extends BungieNetResponse<DestinyProfileResponse> {
	DestinyProfileResponseResponse({
		DestinyProfileResponse? response,
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

	factory DestinyProfileResponseResponse.fromJson(Map<String, dynamic> json) => _$DestinyProfileResponseResponseFromJson(json);

	Map<String, dynamic> toJson() => _$DestinyProfileResponseResponseToJson(this);

	static Future<DestinyProfileResponseResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyProfileResponseResponse>((json)=>DestinyProfileResponseResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}