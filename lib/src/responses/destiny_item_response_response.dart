import '../models/destiny_item_response.dart';
import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';

part 'destiny_item_response_response.g.dart';

/// The response object for retrieving an individual instanced item. None of these components are relevant for an item that doesn't have an "itemInstanceId": for those, get your information from the DestinyInventoryDefinition.
@JsonSerializable()
class DestinyItemResponseResponse extends BungieNetResponse<DestinyItemResponse> {
	DestinyItemResponseResponse({
		DestinyItemResponse? response,
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

	factory DestinyItemResponseResponse.fromJson(Map<String, dynamic> json) => _$DestinyItemResponseResponseFromJson(json);

	Map<String, dynamic> toJson() => _$DestinyItemResponseResponseToJson(this);
}