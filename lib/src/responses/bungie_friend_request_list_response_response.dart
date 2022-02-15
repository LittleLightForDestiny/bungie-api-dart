import '../models/bungie_friend_request_list_response.dart';
import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';

part 'bungie_friend_request_list_response_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class BungieFriendRequestListResponseResponse extends BungieNetResponse<BungieFriendRequestListResponse> {
	BungieFriendRequestListResponseResponse({
		BungieFriendRequestListResponse? response,
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

	factory BungieFriendRequestListResponseResponse.fromJson(Map<String, dynamic> json) => _$BungieFriendRequestListResponseResponseFromJson(json);

	Map<String, dynamic> toJson() => _$BungieFriendRequestListResponseResponseToJson(this);
}