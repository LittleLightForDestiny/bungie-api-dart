import '../models/core_system.dart';
import '../enums/platform_error_codes.dart';

import 'package:json_annotation/json_annotation.dart';
part 'dictionary_ofstring_and_core_system_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class DictionaryOfstringAndCoreSystemResponse{
	DictionaryOfstringAndCoreSystemResponse({
		this.response,
		this.errorCode,
		this.throttleSeconds,
		this.errorStatus,
		this.message,
		this.messageData,
		this.detailedErrorTrace,
	});

	factory DictionaryOfstringAndCoreSystemResponse.fromJson(Map<String, dynamic> json) => _$DictionaryOfstringAndCoreSystemResponseFromJson(json);
	
	
	@JsonKey(name:'Response')
	Map<String, CoreSystem>? response;
	
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

	Map<String, dynamic> toJson() => _$DictionaryOfstringAndCoreSystemResponseToJson(this);
}