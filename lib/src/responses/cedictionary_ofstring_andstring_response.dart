import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';

part 'cedictionary_ofstring_andstring_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class CEDictionaryOfstringAndstringResponse extends BungieNetResponse<Map<String, String>> {
	CEDictionaryOfstringAndstringResponse({
		Map<String, String>? response,
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

	factory CEDictionaryOfstringAndstringResponse.fromJson(Map<String, dynamic> json) => _$CEDictionaryOfstringAndstringResponseFromJson(json);

	Map<String, dynamic> toJson() => _$CEDictionaryOfstringAndstringResponseToJson(this);
}