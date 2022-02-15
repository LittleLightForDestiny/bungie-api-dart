import '../models/destiny_item_change_response.dart';
import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';

part 'destiny_item_change_response_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class DestinyItemChangeResponseResponse extends BungieNetResponse<DestinyItemChangeResponse> {
	DestinyItemChangeResponseResponse({
		DestinyItemChangeResponse? response,
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

	factory DestinyItemChangeResponseResponse.fromJson(Map<String, dynamic> json) => _$DestinyItemChangeResponseResponseFromJson(json);

	Map<String, dynamic> toJson() => _$DestinyItemChangeResponseResponseToJson(this);
}