import '../models/user_theme.dart';
import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

part 'list_of_user_theme_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class ListOfUserThemeResponse extends BungieNetResponse<List<UserTheme>> {
	ListOfUserThemeResponse({
		List<UserTheme>? response,
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

	factory ListOfUserThemeResponse.fromJson(Map<String, dynamic> json) => _$ListOfUserThemeResponseFromJson(json);

	Map<String, dynamic> toJson() => _$ListOfUserThemeResponseToJson(this);

	static Future<ListOfUserThemeResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, ListOfUserThemeResponse>((json)=>ListOfUserThemeResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}