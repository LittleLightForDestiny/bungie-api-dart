import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';

part 'dictionary_ofint32_andstring_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class DictionaryOfint32AndstringResponse extends BungieNetResponse<Map<String, String>> {
	DictionaryOfint32AndstringResponse({
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

	factory DictionaryOfint32AndstringResponse.fromJson(Map<String, dynamic> json) => _$DictionaryOfint32AndstringResponseFromJson(json);

	Map<String, dynamic> toJson() => _$DictionaryOfint32AndstringResponseToJson(this);
}