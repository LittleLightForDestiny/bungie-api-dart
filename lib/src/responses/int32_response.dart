import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';

part 'int32_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class Int32Response extends BungieNetResponse<int> {
	Int32Response({
		int? response,
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

	factory Int32Response.fromJson(Map<String, dynamic> json) => _$Int32ResponseFromJson(json);

	Map<String, dynamic> toJson() => _$Int32ResponseToJson(this);
}