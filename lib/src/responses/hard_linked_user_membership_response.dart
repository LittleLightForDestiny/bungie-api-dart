import '../models/hard_linked_user_membership.dart';
import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';

part 'hard_linked_user_membership_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class HardLinkedUserMembershipResponse extends BungieNetResponse<HardLinkedUserMembership> {
	HardLinkedUserMembershipResponse({
		HardLinkedUserMembership? response,
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

	factory HardLinkedUserMembershipResponse.fromJson(Map<String, dynamic> json) => _$HardLinkedUserMembershipResponseFromJson(json);

	Map<String, dynamic> toJson() => _$HardLinkedUserMembershipResponseToJson(this);
}