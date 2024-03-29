import '../models/global_alert.dart';
import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

part 'celist_of_global_alert_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class CEListOfGlobalAlertResponse extends BungieNetResponse<List<GlobalAlert>> {
	CEListOfGlobalAlertResponse({
		List<GlobalAlert>? response,
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

	factory CEListOfGlobalAlertResponse.fromJson(Map<String, dynamic> json) => _$CEListOfGlobalAlertResponseFromJson(json);

	Map<String, dynamic> toJson() => _$CEListOfGlobalAlertResponseToJson(this);

	static Future<CEListOfGlobalAlertResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, CEListOfGlobalAlertResponse>((json)=>CEListOfGlobalAlertResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}