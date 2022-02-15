import '../models/bungie_friend_list_response.dart';
import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';

part 'bungie_friend_list_response_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class BungieFriendListResponseResponse extends BungieNetResponse<BungieFriendListResponse> {
	BungieFriendListResponseResponse({
		BungieFriendListResponse? response,
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

	factory BungieFriendListResponseResponse.fromJson(Map<String, dynamic> json) => _$BungieFriendListResponseResponseFromJson(json);

	Map<String, dynamic> toJson() => _$BungieFriendListResponseResponseToJson(this);
}