import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

part 'cedictionary_of_bungie_credential_type_andstring_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class CEDictionaryOfBungieCredentialTypeAndstringResponse extends BungieNetResponse<Map<String, String>> {
	CEDictionaryOfBungieCredentialTypeAndstringResponse({
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

	factory CEDictionaryOfBungieCredentialTypeAndstringResponse.fromJson(Map<String, dynamic> json) => _$CEDictionaryOfBungieCredentialTypeAndstringResponseFromJson(json);

	Map<String, dynamic> toJson() => _$CEDictionaryOfBungieCredentialTypeAndstringResponseToJson(this);

	static Future<CEDictionaryOfBungieCredentialTypeAndstringResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, CEDictionaryOfBungieCredentialTypeAndstringResponse>((json)=>CEDictionaryOfBungieCredentialTypeAndstringResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}