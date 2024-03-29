import '../models/destiny_vendor_response.dart';
import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

part 'destiny_vendor_response_response.g.dart';

/// A response containing all of the components for a vendor.
@JsonSerializable()
class DestinyVendorResponseResponse extends BungieNetResponse<DestinyVendorResponse> {
	DestinyVendorResponseResponse({
		DestinyVendorResponse? response,
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

	factory DestinyVendorResponseResponse.fromJson(Map<String, dynamic> json) => _$DestinyVendorResponseResponseFromJson(json);

	Map<String, dynamic> toJson() => _$DestinyVendorResponseResponseToJson(this);

	static Future<DestinyVendorResponseResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyVendorResponseResponse>((json)=>DestinyVendorResponseResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}