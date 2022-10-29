import '../models/get_groups_for_member_response.dart';
import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

part 'get_groups_for_member_response_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class GetGroupsForMemberResponseResponse extends BungieNetResponse<GetGroupsForMemberResponse> {
	GetGroupsForMemberResponseResponse({
		GetGroupsForMemberResponse? response,
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

	factory GetGroupsForMemberResponseResponse.fromJson(Map<String, dynamic> json) => _$GetGroupsForMemberResponseResponseFromJson(json);

	Map<String, dynamic> toJson() => _$GetGroupsForMemberResponseResponseToJson(this);

	static Future<GetGroupsForMemberResponseResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, GetGroupsForMemberResponseResponse>((json)=>GetGroupsForMemberResponseResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}