import '../models/user_membership_data.dart';
import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

part 'user_membership_data_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class UserMembershipDataResponse extends BungieNetResponse<UserMembershipData> {
	UserMembershipDataResponse({
		UserMembershipData? response,
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

	factory UserMembershipDataResponse.fromJson(Map<String, dynamic> json) => _$UserMembershipDataResponseFromJson(json);

	Map<String, dynamic> toJson() => _$UserMembershipDataResponseToJson(this);

	static Future<UserMembershipDataResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, UserMembershipDataResponse>((json)=>UserMembershipDataResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}