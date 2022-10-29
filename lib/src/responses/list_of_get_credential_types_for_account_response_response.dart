import '../models/get_credential_types_for_account_response.dart';
import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

part 'list_of_get_credential_types_for_account_response_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class ListOfGetCredentialTypesForAccountResponseResponse extends BungieNetResponse<List<GetCredentialTypesForAccountResponse>> {
	ListOfGetCredentialTypesForAccountResponseResponse({
		List<GetCredentialTypesForAccountResponse>? response,
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

	factory ListOfGetCredentialTypesForAccountResponseResponse.fromJson(Map<String, dynamic> json) => _$ListOfGetCredentialTypesForAccountResponseResponseFromJson(json);

	Map<String, dynamic> toJson() => _$ListOfGetCredentialTypesForAccountResponseResponseToJson(this);

	static Future<ListOfGetCredentialTypesForAccountResponseResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, ListOfGetCredentialTypesForAccountResponseResponse>((json)=>ListOfGetCredentialTypesForAccountResponseResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}