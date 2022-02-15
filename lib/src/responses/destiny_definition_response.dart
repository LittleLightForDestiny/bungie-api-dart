import '../models/destiny_definition.dart';
import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';

part 'destiny_definition_response.g.dart';

/// Provides common properties for destiny definitions.
@JsonSerializable()
class DestinyDefinitionResponse extends BungieNetResponse<DestinyDefinition> {
	DestinyDefinitionResponse({
		DestinyDefinition? response,
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

	factory DestinyDefinitionResponse.fromJson(Map<String, dynamic> json) => _$DestinyDefinitionResponseFromJson(json);

	Map<String, dynamic> toJson() => _$DestinyDefinitionResponseToJson(this);
}