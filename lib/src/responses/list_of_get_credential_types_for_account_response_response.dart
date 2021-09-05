import '../models/get_credential_types_for_account_response.dart';
import '../enums/platform_error_codes.dart';

import 'package:json_annotation/json_annotation.dart';
part 'list_of_get_credential_types_for_account_response_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class ListOfGetCredentialTypesForAccountResponseResponse{
	ListOfGetCredentialTypesForAccountResponseResponse({
		this.response,
		this.errorCode,
		this.throttleSeconds,
		this.errorStatus,
		this.message,
		this.messageData,
		this.detailedErrorTrace,
	});

	factory ListOfGetCredentialTypesForAccountResponseResponse.fromJson(Map<String, dynamic> json) => _$ListOfGetCredentialTypesForAccountResponseResponseFromJson(json);
	
	
	@JsonKey(name:'Response')
	List<GetCredentialTypesForAccountResponse>? response;
	
	@JsonKey(name:'ErrorCode')
	PlatformErrorCodes? errorCode;
	
	@JsonKey(name:'ThrottleSeconds')
	int? throttleSeconds;
	
	@JsonKey(name:'ErrorStatus')
	String? errorStatus;
	
	@JsonKey(name:'Message')
	String? message;
	
	@JsonKey(name:'MessageData')
	Map<String, String>? messageData;
	
	@JsonKey(name:'DetailedErrorTrace')
	String? detailedErrorTrace;

	Map<String, dynamic> toJson() => _$ListOfGetCredentialTypesForAccountResponseResponseToJson(this);
}