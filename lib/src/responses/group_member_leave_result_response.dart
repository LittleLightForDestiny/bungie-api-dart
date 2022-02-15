import '../models/group_member_leave_result.dart';
import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';

part 'group_member_leave_result_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class GroupMemberLeaveResultResponse extends BungieNetResponse<GroupMemberLeaveResult> {
	GroupMemberLeaveResultResponse({
		GroupMemberLeaveResult? response,
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

	factory GroupMemberLeaveResultResponse.fromJson(Map<String, dynamic> json) => _$GroupMemberLeaveResultResponseFromJson(json);

	Map<String, dynamic> toJson() => _$GroupMemberLeaveResultResponseToJson(this);
}