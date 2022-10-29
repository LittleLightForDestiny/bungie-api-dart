import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

part 'boolean_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class BooleanResponse extends BungieNetResponse<bool> {
	BooleanResponse({
		bool? response,
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

	factory BooleanResponse.fromJson(Map<String, dynamic> json) => _$BooleanResponseFromJson(json);

	Map<String, dynamic> toJson() => _$BooleanResponseToJson(this);

	static Future<BooleanResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, BooleanResponse>((json)=>BooleanResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}