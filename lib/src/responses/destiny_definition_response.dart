import '../models/destiny_definition.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_definition_response.g.dart';

/// Provides common properties for destiny definitions.
@JsonSerializable()
class DestinyDefinitionResponse {
	
	/// Provides common properties for destiny definitions.
	@JsonKey(name:'Response')
	DestinyDefinition response;
	
	@JsonKey(name:'ErrorCode')
	int errorCode;
	
	@JsonKey(name:'ThrottleSeconds')
	int throttleSeconds;
	
	@JsonKey(name:'ErrorStatus')
	String errorStatus;
	
	@JsonKey(name:'Message')
	String message;
	
	@JsonKey(name:'MessageData')
	Map<String, String> messageData;
	
	@JsonKey(name:'DetailedErrorTrace')
	String detailedErrorTrace;
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
	

	Map<String, dynamic> toJson() => _$DestinyDefinitionResponseToJson(this);
}
