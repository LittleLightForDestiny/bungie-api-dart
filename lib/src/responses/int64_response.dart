import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

part 'int64_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class Int64Response extends BungieNetResponse<String> {
	Int64Response({
		String? response,
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

	factory Int64Response.fromJson(Map<String, dynamic> json) => _$Int64ResponseFromJson(json);

	Map<String, dynamic> toJson() => _$Int64ResponseToJson(this);

	static Future<Int64Response> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, Int64Response>((json)=>Int64Response.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}