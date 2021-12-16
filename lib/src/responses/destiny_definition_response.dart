import '../models/destiny_definition.dart';
import '../enums/platform_error_codes.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_definition_response.g.dart';

/// Provides common properties for destiny definitions.
@JsonSerializable()
class DestinyDefinitionResponse{
	DestinyDefinitionResponse({
		this.response,
		this.errorCode,
		this.throttleSeconds,
		this.errorStatus,
		this.message,
		this.messageData,
		this.detailedErrorTrace,
	});

	factory DestinyDefinitionResponse.fromJson(Map<String, dynamic> json) => _$DestinyDefinitionResponseFromJson(json);
	
	
	/// Provides common properties for destiny definitions.
	@JsonKey(name:'Response')
	DestinyDefinition? response;
	
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

	Map<String, dynamic> toJson() => _$DestinyDefinitionResponseToJson(this);
}