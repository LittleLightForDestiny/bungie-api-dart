import '../models/user_search_response.dart';
import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

part 'user_search_response_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class UserSearchResponseResponse extends BungieNetResponse<UserSearchResponse> {
	UserSearchResponseResponse({
		UserSearchResponse? response,
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

	factory UserSearchResponseResponse.fromJson(Map<String, dynamic> json) => _$UserSearchResponseResponseFromJson(json);

	Map<String, dynamic> toJson() => _$UserSearchResponseResponseToJson(this);

	static Future<UserSearchResponseResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, UserSearchResponseResponse>((json)=>UserSearchResponseResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}