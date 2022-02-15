import '../models/group_application_response.dart';
import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';

part 'group_application_response_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class GroupApplicationResponseResponse extends BungieNetResponse<GroupApplicationResponse> {
	GroupApplicationResponseResponse({
		GroupApplicationResponse? response,
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

	factory GroupApplicationResponseResponse.fromJson(Map<String, dynamic> json) => _$GroupApplicationResponseResponseFromJson(json);

	Map<String, dynamic> toJson() => _$GroupApplicationResponseResponseToJson(this);
}