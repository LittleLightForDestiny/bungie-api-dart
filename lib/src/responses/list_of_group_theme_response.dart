import '../models/group_theme.dart';
import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';

part 'list_of_group_theme_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class ListOfGroupThemeResponse extends BungieNetResponse<List<GroupTheme>> {
	ListOfGroupThemeResponse({
		List<GroupTheme>? response,
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

	factory ListOfGroupThemeResponse.fromJson(Map<String, dynamic> json) => _$ListOfGroupThemeResponseFromJson(json);

	Map<String, dynamic> toJson() => _$ListOfGroupThemeResponseToJson(this);
}