import '../models/platform_friend_response.dart';
import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

part 'platform_friend_response_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class PlatformFriendResponseResponse extends BungieNetResponse<PlatformFriendResponse> {
	PlatformFriendResponseResponse({
		PlatformFriendResponse? response,
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

	factory PlatformFriendResponseResponse.fromJson(Map<String, dynamic> json) => _$PlatformFriendResponseResponseFromJson(json);

	Map<String, dynamic> toJson() => _$PlatformFriendResponseResponseToJson(this);

	static Future<PlatformFriendResponseResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, PlatformFriendResponseResponse>((json)=>PlatformFriendResponseResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}