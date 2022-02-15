import '../models/destiny_character_response.dart';
import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';

part 'destiny_character_response_response.g.dart';

/// The response contract for GetDestinyCharacter, with components that can be returned for character and item-level data.
@JsonSerializable()
class DestinyCharacterResponseResponse extends BungieNetResponse<DestinyCharacterResponse> {
	DestinyCharacterResponseResponse({
		DestinyCharacterResponse? response,
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

	factory DestinyCharacterResponseResponse.fromJson(Map<String, dynamic> json) => _$DestinyCharacterResponseResponseFromJson(json);

	Map<String, dynamic> toJson() => _$DestinyCharacterResponseResponseToJson(this);
}