import '../models/core_system.dart';
import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

part 'dictionary_ofstring_and_core_system_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class DictionaryOfstringAndCoreSystemResponse extends BungieNetResponse<Map<String, CoreSystem>> {
	DictionaryOfstringAndCoreSystemResponse({
		Map<String, CoreSystem>? response,
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

	factory DictionaryOfstringAndCoreSystemResponse.fromJson(Map<String, dynamic> json) => _$DictionaryOfstringAndCoreSystemResponseFromJson(json);

	Map<String, dynamic> toJson() => _$DictionaryOfstringAndCoreSystemResponseToJson(this);

	static Future<DictionaryOfstringAndCoreSystemResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DictionaryOfstringAndCoreSystemResponse>((json)=>DictionaryOfstringAndCoreSystemResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}