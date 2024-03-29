import '../models/destiny_public_vendors_response.dart';
import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

part 'destiny_public_vendors_response_response.g.dart';

/// A response containing all valid components for the public Vendors endpoint.
///  It is a decisively smaller subset of data compared to what we can get when we know the specific user making the request.
///  If you want any of the other data - item details, whether or not you can buy it, etc... you'll have to call in the context of a character. I know, sad but true.
@JsonSerializable()
class DestinyPublicVendorsResponseResponse extends BungieNetResponse<DestinyPublicVendorsResponse> {
	DestinyPublicVendorsResponseResponse({
		DestinyPublicVendorsResponse? response,
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

	factory DestinyPublicVendorsResponseResponse.fromJson(Map<String, dynamic> json) => _$DestinyPublicVendorsResponseResponseFromJson(json);

	Map<String, dynamic> toJson() => _$DestinyPublicVendorsResponseResponseToJson(this);

	static Future<DestinyPublicVendorsResponseResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyPublicVendorsResponseResponse>((json)=>DestinyPublicVendorsResponseResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}